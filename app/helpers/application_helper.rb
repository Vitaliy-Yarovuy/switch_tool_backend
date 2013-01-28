#module ActiveRecord
#  class Migrator
#    def ddl_transaction(&block)
#      block.call
#    end
#  end
#end


module ApplicationHelper
  def export_to_db()
    symptoms = Symptom.all
    spec = ActiveRecord::Base.connection_config #Symptom.configurations["development"]
    new_spec = spec.clone
    new_spec["database"] = "public/dbs/new.sqlite3"
    ActiveRecord::Base.logger.info("[ApplicationHelper] before establish_connection publishing")
    ActiveRecord::Base.establish_connection new_spec #:publishing
    ActiveRecord::Migrator.migrate("db/migrate/", nil)
    ActiveRecord::Base.logger.info("[ApplicationHelper] before copy")
    copy_objs symptoms, Symptom
    ActiveRecord::Base.logger.info("[ApplicationHelper] after copy")

    ActiveRecord::Base.establish_connection spec #:development
    ActiveRecord::Base.logger.info("[ApplicationHelper] after establish_connection")
  end

  def copy_objs(objs, model)
    objs.map { |o|
      #get the original object attributes
      atts = o.attributes
      # remove any that will cause problems
      atts.delete("id")
      atts.delete("is_null")
      # create the new object
      new_o = model.new atts
      # use send yo bypass mass assignment issues
      # new_o.send :attributes=, atts, false
      # set the id separately
      new_o.id =o.id
      # make sure to save without validations
      new_o.save_with_validation false
      Rails.logger.error "COPIED #{ new_o.inspect }"
    }
  end

end
