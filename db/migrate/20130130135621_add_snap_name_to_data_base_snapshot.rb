class AddSnapNameToDataBaseSnapshot < ActiveRecord::Migration
  def change
    add_column :data_base_snapshots, :snap_file, :string
  end
end
