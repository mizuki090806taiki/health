require 'test_helper'

class KaunseringuYoyakusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kaunseringu_yoyaku = kaunseringu_yoyakus(:one)
  end

  test "should get index" do
    get kaunseringu_yoyakus_url
    assert_response :success
  end

  test "should get new" do
    get new_kaunseringu_yoyaku_url
    assert_response :success
  end

  test "should create kaunseringu_yoyaku" do
    assert_difference('KaunseringuYoyaku.count') do
      post kaunseringu_yoyakus_url, params: { kaunseringu_yoyaku: { kaunseringu_shedule_id: @kaunseringu_yoyaku.kaunseringu_shedule_id, memo: @kaunseringu_yoyaku.memo, result: @kaunseringu_yoyaku.result, seito_id: @kaunseringu_yoyaku.seito_id } }
    end

    assert_redirected_to kaunseringu_yoyaku_url(KaunseringuYoyaku.last)
  end

  test "should show kaunseringu_yoyaku" do
    get kaunseringu_yoyaku_url(@kaunseringu_yoyaku)
    assert_response :success
  end

  test "should get edit" do
    get edit_kaunseringu_yoyaku_url(@kaunseringu_yoyaku)
    assert_response :success
  end

  test "should update kaunseringu_yoyaku" do
    patch kaunseringu_yoyaku_url(@kaunseringu_yoyaku), params: { kaunseringu_yoyaku: { kaunseringu_shedule_id: @kaunseringu_yoyaku.kaunseringu_shedule_id, memo: @kaunseringu_yoyaku.memo, result: @kaunseringu_yoyaku.result, seito_id: @kaunseringu_yoyaku.seito_id } }
    assert_redirected_to kaunseringu_yoyaku_url(@kaunseringu_yoyaku)
  end

  test "should destroy kaunseringu_yoyaku" do
    assert_difference('KaunseringuYoyaku.count', -1) do
      delete kaunseringu_yoyaku_url(@kaunseringu_yoyaku)
    end

    assert_redirected_to kaunseringu_yoyakus_url
  end
end
