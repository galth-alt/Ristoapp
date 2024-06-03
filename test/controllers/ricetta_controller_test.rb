require "test_helper"

class RicettaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ricettum = ricetta(:one)
  end

  test "should get index" do
    get ricetta_url
    assert_response :success
  end

  test "should get new" do
    get new_ricettum_url
    assert_response :success
  end

  test "should create ricettum" do
    assert_difference("Ricettum.count") do
      post ricetta_url, params: { ricettum: { IngredienteRicetta: @ricettum.IngredienteRicetta, descrizione: @ricettum.descrizione, generate: @ricettum.generate, ingrediente_id: @ricettum.ingrediente_id, model: @ricettum.model, nome: @ricettum.nome, quantita: @ricettum.quantita, rails: @ricettum.rails, ricetta_id: @ricettum.ricetta_id } }
    end

    assert_redirected_to ricettum_url(Ricettum.last)
  end

  test "should show ricettum" do
    get ricettum_url(@ricettum)
    assert_response :success
  end

  test "should get edit" do
    get edit_ricettum_url(@ricettum)
    assert_response :success
  end

  test "should update ricettum" do
    patch ricettum_url(@ricettum), params: { ricettum: { IngredienteRicetta: @ricettum.IngredienteRicetta, descrizione: @ricettum.descrizione, generate: @ricettum.generate, ingrediente_id: @ricettum.ingrediente_id, model: @ricettum.model, nome: @ricettum.nome, quantita: @ricettum.quantita, rails: @ricettum.rails, ricetta_id: @ricettum.ricetta_id } }
    assert_redirected_to ricettum_url(@ricettum)
  end

  test "should destroy ricettum" do
    assert_difference("Ricettum.count", -1) do
      delete ricettum_url(@ricettum)
    end

    assert_redirected_to ricetta_url
  end
end
