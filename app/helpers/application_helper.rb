module ApplicationHelper
  def export_to_db()
    symptoms = Symptom.all.to_a
    spec = Symptom.configurations["development"]
    new_spec = spec.clone
    #new_spec["database"] = "public/dbs/new.sqlite3"
    ActiveRecord::Base.establish_connection(new_spec)
    #ActiveRecord::Migrator.migrate("db/migrate/", nil)
    symptoms.each{ |x| x.save }
    #ActiveRecord::Base.logger.info("[ApplicationHelper] before establish_connection")
    ActiveRecord::Base.connection_pool.disconnect!
    ActiveRecord::Base.establish_connection(spec)
    #ActiveRecord::Base.logger.info("[ApplicationHelper] after establish_connection")
    ActiveRecord::Base.logger.info("[ApplicationHelper] export_to_db")
  end
end
