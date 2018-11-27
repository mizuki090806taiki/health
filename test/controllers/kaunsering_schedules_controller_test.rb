require 'test_helper'

class KaunseringSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kaunsering_schedule = kaunsering_schedules(:one)
  end

  test "should get index" do
    get kaunsering_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_kaunsering_schedule_url
    assert_response :success
  end

  test "should create kaunsering_schedule" do
    assert_difference('KaunseringSchedule.count') do
      post kaunsering_schedules_url, params: { kaunsering_schedule: { memo: @kaunsering_schedule.memo, yoyakuzikan: @kaunsering_schedule.yoyakuzikan } }
    end

    assert_redirected_to kaunsering_schedule_url(KaunseringSchedule.last)
  end

  test "should show kaunsering_schedule" do
    get kaunsering_schedule_url(@kaunsering_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_kaunsering_schedule_url(@kaunsering_schedule)
    assert_response :success
  end

  test "should update kaunsering_schedule" do
    patch kaunsering_schedule_url(@kaunsering_schedule), params: { kaunsering_schedule: { memo: @kaunsering_schedule.memo, yoyakuzikan: @kaunsering_schedule.yoyakuzikan } }
    assert_redirected_to kaunsering_schedule_url(@kaunsering_schedule)
  end

  test "should destroy kaunsering_schedule" do
    assert_difference('KaunseringSchedule.count', -1) do
      delete kaunsering_schedule_url(@kaunsering_schedule)
    end

    assert_redirected_to kaunsering_schedules_url
  end
end
