require 'test_helper'

class GakunennsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gakunenn = gakunenns(:one)
  end

  test "should get index" do
    get gakunenns_url
    assert_response :success
  end

  test "should get new" do
    get new_gakunenn_url
    assert_response :success
  end

  test "should create gakunenn" do
    assert_difference('Gakunenn.count') do
      post gakunenns_url, params: { gakunenn: { gakunenn: @gakunenn.gakunenn, kumi: @gakunenn.kumi, ninnzuu: @gakunenn.ninnzuu } }
    end

    assert_redirected_to gakunenn_url(Gakunenn.last)
  end

  test "should show gakunenn" do
    get gakunenn_url(@gakunenn)
    assert_response :success
  end

  test "should get edit" do
    get edit_gakunenn_url(@gakunenn)
    assert_response :success
  end

  test "should update gakunenn" do
    patch gakunenn_url(@gakunenn), params: { gakunenn: { gakunenn: @gakunenn.gakunenn, kumi: @gakunenn.kumi, ninnzuu: @gakunenn.ninnzuu } }
    assert_redirected_to gakunenn_url(@gakunenn)
  end

  test "should destroy gakunenn" do
    assert_difference('Gakunenn.count', -1) do
      delete gakunenn_url(@gakunenn)
    end

    assert_redirected_to gakunenns_url
  end
end
