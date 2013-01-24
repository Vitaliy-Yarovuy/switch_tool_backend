class CreateDataBaseSnapshots < ActiveRecord::Migration
  def change
    create_table :data_base_snapshots do |t|
      t.string :notice
      t.timestamps
    end
  end
  def self.up
    add_attachment :data_base_snapshots, :snap_file
  end

  def self.down
    remove_attachment :data_base_snapshots, :snap_file
  end
end
