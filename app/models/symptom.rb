class Symptom < ActiveRecord::Base
  has_many :treatment_groups
  attr_accessible :description, :name
  attr_accessible :treatment_group_ids, :photo

  has_attached_file :photo,
                  :storage => :database, ## This is the essence
                  :styles => { :original => "200x180>" },
                  :default_style => :original,
                  :database_table => 'symptom_photos',
                  :url => '/symptoms/show_photo/:id/:style'

end