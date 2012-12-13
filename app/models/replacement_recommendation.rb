class ReplacementRecommendation < ActiveRecord::Base
  belongs_to :medicament_from, :class_name => :Medicament, :foreign_key => :medicament_id_from
  belongs_to :medicament_to, :class_name => :Medicament, :foreign_key => :medicament_id_to

  attr_accessible :description, :is_exchangeable, :medicament_id_from, :medicament_id_to
  attr_accessible :medicament_ids


end
