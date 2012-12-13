class CreateReplacementRecommendations < ActiveRecord::Migration
  def change
    create_table :replacement_recommendations do |t|
      t.integer :medicament_id_from
      t.integer :medicament_id_to
      t.boolean :is_exchangeable
      t.text :description

      t.timestamps
    end
  end
end
