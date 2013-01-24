class DropMedicamentSymptomJoinTable < ActiveRecord::Migration
  def up
    drop_table :medicaments_symptoms
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
