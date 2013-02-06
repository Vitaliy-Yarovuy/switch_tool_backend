class RemoveNotNeededTable < ActiveRecord::Migration
  def change
    drop_table :users
    drop_table :data_base_snapshots
    drop_table :rails_admin_histories
  end
end
