class Symptom < ActiveRecord::Base
  has_and_belongs_to_many :medicaments
  attr_accessible :description, :name
end
