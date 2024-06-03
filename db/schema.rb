# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_25_221626) do
  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cognome"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredientes", force: :cascade do |t|
    t.string "nome"
    t.integer "giacenza"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordines", force: :cascade do |t|
    t.integer "cliente_id", null: false
    t.string "rails"
    t.string "generate"
    t.string "model"
    t.string "RicettaOrdine"
    t.integer "ordine_id", null: false
    t.integer "ricetta_id", null: false
    t.integer "quantita"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_ordines_on_cliente_id"
    t.index ["ordine_id"], name: "index_ordines_on_ordine_id"
    t.index ["ricetta_id"], name: "index_ordines_on_ricetta_id"
  end

  create_table "ricetta", force: :cascade do |t|
    t.string "nome"
    t.text "descrizione"
    t.string "rails"
    t.string "generate"
    t.string "model"
    t.string "IngredienteRicetta"
    t.integer "ricetta_id", null: false
    t.integer "ingrediente_id", null: false
    t.integer "quantita"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingrediente_id"], name: "index_ricetta_on_ingrediente_id"
    t.index ["ricetta_id"], name: "index_ricetta_on_ricetta_id"
  end

  add_foreign_key "ordines", "clientes"
  add_foreign_key "ordines", "ordines"
  add_foreign_key "ordines", "ricetta", column: "ricetta_id"
  add_foreign_key "ricetta", "ingredientes"
  add_foreign_key "ricetta", "ricetta", column: "ricetta_id"
end
