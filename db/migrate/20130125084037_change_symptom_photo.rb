class ChangeSymptomPhoto < ActiveRecord::Migration
  def up
    change_table :symptom_photos do |t|
      t.change :file_contents, :text, :null=>true
    end
    #remove_column :symptom_photos, :file_contents
    #add_column :symptom_photos, :file_contents, :text, :null=>true
  end

  def down
    change_table :symptom_photos do |t|
      t.change :file_contents, :binary, :null=>true
    end
    #remove_column :symptom_photos, :file_contents
    #add_column :symptom_photos, :file_contents, :binary, :null=>true
  end
end
