class CreateOrdines < ActiveRecord::Migration[7.1]
  def change
    create_table :ordines do |t|
      t.references :cliente, null: false, foreign_key: true
      t.string :rails
      t.string :generate
      t.string :model
      t.string :RicettaOrdine
      t.references :ordine, null: false, foreign_key: true
      t.references :ricetta, null: false, foreign_key: true
      t.integer :quantita

      t.timestamps
    end
  end
end
