class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.integer :treatment_group_id
      t.string :name
      t.integer :medicament_id
      t.boolean :is_more_than_21
      t.integer :dose_by_taking
      t.integer :admission_per_day

      t.timestamps
    end
  end
end
