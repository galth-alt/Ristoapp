require "application_system_test_case"

class OrdinesTest < ApplicationSystemTestCase
  setup do
    @ordine = ordines(:one)
  end

  test "visiting the index" do
    visit ordines_url
    assert_selector "h1", text: "Ordines"
  end

  test "should create ordine" do
    visit ordines_url
    click_on "New ordine"

    fill_in "Ricettaordine", with: @ordine.RicettaOrdine
    fill_in "Cliente", with: @ordine.cliente_id
    fill_in "Generate", with: @ordine.generate
    fill_in "Model", with: @ordine.model
    fill_in "Ordine", with: @ordine.ordine_id
    fill_in "Quantita", with: @ordine.quantita
    fill_in "Rails", with: @ordine.rails
    fill_in "Ricetta", with: @ordine.ricetta_id
    click_on "Create Ordine"

    assert_text "Ordine was successfully created"
    click_on "Back"
  end

  test "should update Ordine" do
    visit ordine_url(@ordine)
    click_on "Edit this ordine", match: :first

    fill_in "Ricettaordine", with: @ordine.RicettaOrdine
    fill_in "Cliente", with: @ordine.cliente_id
    fill_in "Generate", with: @ordine.generate
    fill_in "Model", with: @ordine.model
    fill_in "Ordine", with: @ordine.ordine_id
    fill_in "Quantita", with: @ordine.quantita
    fill_in "Rails", with: @ordine.rails
    fill_in "Ricetta", with: @ordine.ricetta_id
    click_on "Update Ordine"

    assert_text "Ordine was successfully updated"
    click_on "Back"
  end

  test "should destroy Ordine" do
    visit ordine_url(@ordine)
    click_on "Destroy this ordine", match: :first

    assert_text "Ordine was successfully destroyed"
  end
end
