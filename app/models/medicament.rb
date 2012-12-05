class Medicament < ActiveRecord::Base
  has_and_belongs_to_many :symptoms
  attr_accessible :big_description, :dosage_form, :drug_form, :medical_evidence, :name, :small_description, :trade_names
end
