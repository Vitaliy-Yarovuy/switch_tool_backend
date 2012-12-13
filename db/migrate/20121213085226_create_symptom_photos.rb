class CreateSymptomPhotos < ActiveRecord::Migration
  def self.up
    create_table :symptom_photos do |t|
      t.integer    :symptom_id
      t.string     :style
      t.binary     :file_contents
    end
  end

  def self.down
    drop_table :symptom_photos
  end
end
