class AddFiledToMedicament < ActiveRecord::Migration
  def change
    change_table :medicaments do |t|
      t.boolean :is_allowed_with_other, :default => false
      t.integer :mg_dose
    end
  end
end
