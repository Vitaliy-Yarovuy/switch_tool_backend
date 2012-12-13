class Symptom < ActiveRecord::Base
  has_and_belongs_to_many :medicaments
  has_many :treatment_groups
  attr_accessible :description, :name
  attr_accessible :medicament_ids, :treatment_group_ids, :photo



  has_attached_file :photo,
                  :storage => :database, ## This is the essence
                  :styles => { :medium => "200x180>" },
                  :default_style => :medium,
                  :database_table => 'symptom_photos'
                  #:url => '/symptoms/show_photo/:id/:style'

  #attr_accessor :delete_photo
  #before_validation { self.photo.clear if self.delete_photo == '1' }



  #attr_accessor :photo_file_name
  #attr_accessor :photo_content_type
  #attr_accessor :photo_file_size
  #attr_accessor :photo_updated_at

  #PAPERCLIP_IMAGES_PATH_POSTFIX = 'images/attachments/:rails_env/symptom_:id/:style/:basename.:extension'
  #has_attached_file :photo,
  #                  :styles => { :medium => "300x300>", :thumb => "100x100>" },
  #                  :default_style => :medium,
  #                  :path => ":rails_root/public/#{PAPERCLIP_IMAGES_PATH_POSTFIX}",
  #                  :url => "/#{PAPERCLIP_IMAGES_PATH_POSTFIX}"

  rails_admin do
    edit do
      field :name
      field :description
      field :medicaments
      field :treatment_groups
      field :photo, :paperclip
    end
  end
end