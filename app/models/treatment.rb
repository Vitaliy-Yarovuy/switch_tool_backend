class Treatment < ActiveRecord::Base
  belongs_to :treatment_group
  belongs_to :medicament
  attr_accessible :admission_per_day, :dose_by_taking, :is_more_than_21, :medicament_id, :name, :treatment_group_id, :medicament, :treatment_group

  attr_accessible :medicament, :treatment_group

end
