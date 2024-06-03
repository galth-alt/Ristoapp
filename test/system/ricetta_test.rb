require "application_system_test_case"

class RicettaTest < ApplicationSystemTestCase
  setup do
    @ricettum = ricetta(:one)
  end

  test "visiting the index" do
    visit ricetta_url
    assert_selector "h1", text: "Ricetta"
  end

  test "should create ricettum" do
    visit ricetta_url
    click_on "New ricettum"

    fill_in "Ingredientericetta", with: @ricettum.IngredienteRicetta
    fill_in "Descrizione", with: @ricettum.descrizione
    fill_in "Generate", with: @ricettum.generate
    fill_in "Ingrediente", with: @ricettum.ingrediente_id
    fill_in "Model", with: @ricettum.model
    fill_in "Nome", with: @ricettum.nome
    fill_in "Quantita", with: @ricettum.quantita
    fill_in "Rails", with: @ricettum.rails
    fill_in "Ricetta", with: @ricettum.ricetta_id
    click_on "Create Ricettum"

    assert_text "Ricettum was successfully created"
    click_on "Back"
  end

  test "should update Ricettum" do
    visit ricettum_url(@ricettum)
    click_on "Edit this ricettum", match: :first

    fill_in "Ingredientericetta", with: @ricettum.IngredienteRicetta
    fill_in "Descrizione", with: @ricettum.descrizione
    fill_in "Generate", with: @ricettum.generate
    fill_in "Ingrediente", with: @ricettum.ingrediente_id
    fill_in "Model", with: @ricettum.model
    fill_in "Nome", with: @ricettum.nome
    fill_in "Quantita", with: @ricettum.quantita
    fill_in "Rails", with: @ricettum.rails
    fill_in "Ricetta", with: @ricettum.ricetta_id
    click_on "Update Ricettum"

    assert_text "Ricettum was successfully updated"
    click_on "Back"
  end

  test "should destroy Ricettum" do
    visit ricettum_url(@ricettum)
    click_on "Destroy this ricettum", match: :first

    assert_text "Ricettum was successfully destroyed"
  end
end
