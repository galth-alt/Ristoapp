class CreateIngredientes < ActiveRecord::Migration[7.1]
  def change
    create_table :ingredientes do |t|
      t.string :nome
      t.integer :giacenza

      t.timestamps
    end
  end
end
