class Medicament < ActiveRecord::Base
  attr_accessible :big_description, :dosage_form, :drug_form, :medical_evidence, :name, :small_description,
                  :trade_names, :is_allowed_with_other, :mg_dose
end
