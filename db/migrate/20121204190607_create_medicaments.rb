class CreateMedicaments < ActiveRecord::Migration
  def change
    create_table :medicaments do |t|
      t.string :name
      t.integer :drug_form
      t.string :small_description
      t.text :big_description
      t.text :medical_evidence
      t.text :dosage_form
      t.text :trade_names

      t.timestamps
    end
  end
end
