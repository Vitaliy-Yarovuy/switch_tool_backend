class Symptom < ActiveRecord::Base
  has_and_belongs_to_many :medicaments
  has_many :treatment_groups
  attr_accessible :description, :name
  attr_accessible :medicament_ids, :treatment_group_ids

end