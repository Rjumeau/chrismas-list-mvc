class CreateGifts < ActiveRecord::Migration[7.0]
  def change
    create_table :gifts do |t|
      # Type de colonne # Nom de colonne
      t.string :name
      t.boolean :bought
      t.timestamps # Crée une colonne created_at et une colonne updated_at
    end
  end
end
