class AddAttachmentPhotoToSymptoms < ActiveRecord::Migration
  def self.up
    change_table :symptoms do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :symptoms, :photo
  end
end
