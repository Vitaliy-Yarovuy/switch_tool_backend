class CreateTreatmentGroup < ActiveRecord::Migration
  def change
    create_table :treatment_groups do |t|
      t.string :name
      t.integer :symptom_id

      t.timestamps
    end
  end
end

