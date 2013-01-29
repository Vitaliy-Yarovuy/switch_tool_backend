class TreatmentGroup < ActiveRecord::Base
  belongs_to :symptom
  has_many :treatments
  attr_accessible :name

  attr_accessible :symptom, :treatments
end
