class TreatmentGroup < ActiveRecord::Base
  belongs_to :symptom
  has_many :treatments
  attr_accessible :name, :symptom_id

  attr_accessible :treatment_ids, :symptom_ids
end
