class CreateRicetta < ActiveRecord::Migration[7.1]
  def change
    create_table :ricetta do |t|
      t.string :nome
      t.text :descrizione
      t.string :rails
      t.string :generate
      t.string :model
      t.string :IngredienteRicetta
      t.references :ricetta, null: false, foreign_key: true
      t.references :ingrediente, null: false, foreign_key: true
      t.integer :quantita

      t.timestamps
    end
  end
end
