require "test_helper"

class OrdinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordine = ordines(:one)
  end

  test "should get index" do
    get ordines_url
    assert_response :success
  end

  test "should get new" do
    get new_ordine_url
    assert_response :success
  end

  test "should create ordine" do
    assert_difference("Ordine.count") do
      post ordines_url, params: { ordine: { RicettaOrdine: @ordine.RicettaOrdine, cliente_id: @ordine.cliente_id, generate: @ordine.generate, model: @ordine.model, ordine_id: @ordine.ordine_id, quantita: @ordine.quantita, rails: @ordine.rails, ricetta_id: @ordine.ricetta_id } }
    end

    assert_redirected_to ordine_url(Ordine.last)
  end

  test "should show ordine" do
    get ordine_url(@ordine)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordine_url(@ordine)
    assert_response :success
  end

  test "should update ordine" do
    patch ordine_url(@ordine), params: { ordine: { RicettaOrdine: @ordine.RicettaOrdine, cliente_id: @ordine.cliente_id, generate: @ordine.generate, model: @ordine.model, ordine_id: @ordine.ordine_id, quantita: @ordine.quantita, rails: @ordine.rails, ricetta_id: @ordine.ricetta_id } }
    assert_redirected_to ordine_url(@ordine)
  end

  test "should destroy ordine" do
    assert_difference("Ordine.count", -1) do
      delete ordine_url(@ordine)
    end

    assert_redirected_to ordines_url
  end
end
