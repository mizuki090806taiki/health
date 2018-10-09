require 'test_helper'

class ByouketusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @byouketu = byouketus(:one)
  end

  test "should get index" do
    get byouketus_url
    assert_response :success
  end

  test "should get new" do
    get new_byouketu_url
    assert_response :success
  end

  test "should create byouketu" do
    assert_difference('Byouketu.count') do
      post byouketus_url, params: { byouketu: { riyuu: @byouketu.riyuu } }
    end

    assert_redirected_to byouketu_url(Byouketu.last)
  end

  test "should show byouketu" do
    get byouketu_url(@byouketu)
    assert_response :success
  end

  test "should get edit" do
    get edit_byouketu_url(@byouketu)
    assert_response :success
  end

  test "should update byouketu" do
    patch byouketu_url(@byouketu), params: { byouketu: { riyuu: @byouketu.riyuu } }
    assert_redirected_to byouketu_url(@byouketu)
  end

  test "should destroy byouketu" do
    assert_difference('Byouketu.count', -1) do
      delete byouketu_url(@byouketu)
    end

    assert_redirected_to byouketus_url
  end
end
