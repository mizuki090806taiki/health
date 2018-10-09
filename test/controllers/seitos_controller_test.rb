require 'test_helper'

class SeitosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seito = seitos(:one)
  end

  test "should get index" do
    get seitos_url
    assert_response :success
  end

  test "should get new" do
    get new_seito_url
    assert_response :success
  end

  test "should create seito" do
    assert_difference('Seito.count') do
      post seitos_url, params: { seito: { banngou: @seito.banngou, gakunenn_id: @seito.gakunenn_id, seibetu: @seito.seibetu, simei: @seito.simei } }
    end

    assert_redirected_to seito_url(Seito.last)
  end

  test "should show seito" do
    get seito_url(@seito)
    assert_response :success
  end

  test "should get edit" do
    get edit_seito_url(@seito)
    assert_response :success
  end

  test "should update seito" do
    patch seito_url(@seito), params: { seito: { banngou: @seito.banngou, gakunenn_id: @seito.gakunenn_id, seibetu: @seito.seibetu, simei: @seito.simei } }
    assert_redirected_to seito_url(@seito)
  end

  test "should destroy seito" do
    assert_difference('Seito.count', -1) do
      delete seito_url(@seito)
    end

    assert_redirected_to seitos_url
  end
end
