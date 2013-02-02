class CreateDataBaseSnapshots < ActiveRecord::Migration
  def change
    create_table :data_base_snapshots do |t|
      t.string :notice
      t.timestamps
    end
  end

end
