require 'test_helper'

class TikokusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tikoku = tikokus(:one)
  end

  test "should get index" do
    get tikokus_url
    assert_response :success
  end

  test "should get new" do
    get new_tikoku_url
    assert_response :success
  end

  test "should create tikoku" do
    assert_difference('Tikoku.count') do
      post tikokus_url, params: { tikoku: { riyuu: @tikoku.riyuu } }
    end

    assert_redirected_to tikoku_url(Tikoku.last)
  end

  test "should show tikoku" do
    get tikoku_url(@tikoku)
    assert_response :success
  end

  test "should get edit" do
    get edit_tikoku_url(@tikoku)
    assert_response :success
  end

  test "should update tikoku" do
    patch tikoku_url(@tikoku), params: { tikoku: { riyuu: @tikoku.riyuu } }
    assert_redirected_to tikoku_url(@tikoku)
  end

  test "should destroy tikoku" do
    assert_difference('Tikoku.count', -1) do
      delete tikoku_url(@tikoku)
    end

    assert_redirected_to tikokus_url
  end
end
