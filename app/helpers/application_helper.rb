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
    medicaments = Medicament.all
    treatmentGroups = TreatmentGroup.all
    treatments = Treatment.all
    recommendations = ReplacementRecommendation.all

    spec = ActiveRecord::Base.connection_config
    new_spec = spec.clone
    new_spec["database"] = "public/dbs/new.sqlite3"
    ActiveRecord::Base.establish_connection new_spec #:publishing
    ActiveRecord::Migrator.migrate("db/migrate/", nil)

    #copy_objs symptoms, Symptom
    copy_objs medicaments, Medicament
    copy_objs treatmentGroups, TreatmentGroup
    copy_objs treatments, Treatment
    copy_objs recommendations, ReplacementRecommendation

    ActiveRecord::Base.establish_connection spec #:development

  end

  def copy_objs(objs, model)
    objs.map { |o|
      #get the original object attributes
      atts = o.attributes
      # remove any that will cause problems
      atts.delete("id")
      atts.delete("is_null")
      #atts.delete("created_at")
      #atts.delete("updated_at")
      #atts.delete("ptoto_file_name")
      #atts.delete("ptoto_content_type")tely
      new_o.id =o.id
      # make sure to save without validations
      new_o.save
    }
  end

end
