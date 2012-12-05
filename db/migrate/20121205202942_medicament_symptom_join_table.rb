class MedicamentSymptomJoinTable < ActiveRecord::Migration
  def change
    create_table :medicaments_symptoms, :id => false do |t|
      t.integer :medicament_id
      t.integer :symptom_id
    end
  end
end
