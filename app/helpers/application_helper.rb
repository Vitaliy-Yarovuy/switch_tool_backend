#module ActiveRecord
#  class Migrator
#    def ddl_transaction(&block)
#      block.call
#    end
#  end
#end


module ApplicationHelper
  def export_to_db(db_name)
    symptoms = Symptom.all
    symptoms_photos = symptoms.map{ |x|
      x.photo.to_file
    }
    medicaments = Medicament.all
    treatmentGroups = TreatmentGroup.all
    treatments = Treatment.all
    recommendations = ReplacementRecommendation.all

    spec = ActiveRecord::Base.connection_config
    new_spec = spec.clone
    new_spec["database"] = "public/" + Rails.application.config.dbs_public_path + db_name;
    ActiveRecord::Base.establish_connection new_spec #:publishing
    ActiveRecord::Migrator.migrate("db/migrate/", nil)
    ActiveRecord::Migrator.migrate("db/clear_db_midration/", nil)

    copy_obj(symptoms, Symptom, %w[created_at updated_at], %w[photo_file_name photo_content_type photo_file_size photo_updated_at]) { |new_o, index|
      new_o.photo = symptoms_photos[index]
    }
    copy_obj medicaments, Medicament, %w[created_at updated_at]
    copy_obj treatmentGroups, TreatmentGroup, %w[created_at updated_at symptom_id]
    copy_obj treatments, Treatment, %w[created_at updated_at treatment_group_id medicament_id]
    copy_obj recommendations, ReplacementRecommendation, %w[created_at updated_at medicament_id_from medicament_id_to]

    ActiveRecord::Base.establish_connection spec #:development
  end


  def delete_db(db_name)
    path_to_file = Rails.root + "/public/" + Rails.application.config.dbs_public_path + db_name;
    File.delete(path_to_file) if File.exist?(path_to_file)
  end

  private
    def copy_obj(objs,model,private_attrs, remove_attrs = [])
        objs.each_with_index.map{ |o, index|
          atts = o.attributes
          atts.delete("id")
          remove_attrs.each{ |name|
            atts.delete(name)
          }
          private_attrs.each{ |name|
            atts.delete(name)
          }
          new_o = model.new atts
          new_o.id =o.id
          private_attrs.each{ |name|
            new_o.send :attribute=, name.to_s, o.send(name.to_s)
          }
          yield new_o, index if block_given?
          new_o.save
        }
    end

end
