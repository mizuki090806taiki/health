require 'test_helper'

class HokensituUsesheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hokensitu_usesheet = hokensitu_usesheets(:one)
  end

  test "should get index" do
    get hokensitu_usesheets_url
    assert_response :success
  end

  test "should get new" do
    get new_hokensitu_usesheet_url
    assert_response :success
  end

  test "should create hokensitu_usesheet" do
    assert_difference('HokensituUsesheet.count') do
      post hokensitu_usesheets_url, params: { hokensitu_usesheet: { bad_jigen: @hokensitu_usesheet.bad_jigen, bad_start: @hokensitu_usesheet.bad_start, breakfast: @hokensitu_usesheet.breakfast, bukatu: @hokensitu_usesheet.bukatu, bukatu_flg: @hokensitu_usesheet.bukatu_flg, defecation: @hokensitu_usesheet.defecation, geka_detail: @hokensitu_usesheet.geka_detail, geka_detail_bui: @hokensitu_usesheet.geka_detail_bui, geka_detail_place: @hokensitu_usesheet.geka_detail_place, geka_detail_time: @hokensitu_usesheet.geka_detail_time, geka_riyuu_sonota: @hokensitu_usesheet.geka_riyuu_sonota, go_class: @hokensitu_usesheet.go_class, go_consultation: @hokensitu_usesheet.go_consultation, go_home: @hokensitu_usesheet.go_home, go_home_tel: @hokensitu_usesheet.go_home_tel, go_hospital: @hokensitu_usesheet.go_hospital, go_hospital_name: @hokensitu_usesheet.go_hospital_name, go_rest_from: @hokensitu_usesheet.go_rest_from, go_rest_jigen_from: @hokensitu_usesheet.go_rest_jigen_from, go_rest_jigen_to: @hokensitu_usesheet.go_rest_jigen_to, go_rest_to: @hokensitu_usesheet.go_rest_to, go_sonota: @hokensitu_usesheet.go_sonota, good_sleep: @hokensitu_usesheet.good_sleep, howdo_sonota: @hokensitu_usesheet.howdo_sonota, ketuatu: @hokensitu_usesheet.ketuatu, kyoka: @hokensitu_usesheet.kyoka, kyokatannin: @hokensitu_usesheet.kyokatannin, myakuhaku: @hokensitu_usesheet.myakuhaku, naika_riyuu_sonota: @hokensitu_usesheet.naika_riyuu_sonota, raishitu_time: @hokensitu_usesheet.raishitu_time, seito_id: @hokensitu_usesheet.seito_id, sleep: @hokensitu_usesheet.sleep, taion: @hokensitu_usesheet.taion, wakeup: @hokensitu_usesheet.wakeup, worry: @hokensitu_usesheet.worry, worry_sonota: @hokensitu_usesheet.worry_sonota } }
    end

    assert_redirected_to hokensitu_usesheet_url(HokensituUsesheet.last)
  end

  test "should show hokensitu_usesheet" do
    get hokensitu_usesheet_url(@hokensitu_usesheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_hokensitu_usesheet_url(@hokensitu_usesheet)
    assert_response :success
  end

  test "should update hokensitu_usesheet" do
    patch hokensitu_usesheet_url(@hokensitu_usesheet), params: { hokensitu_usesheet: { bad_jigen: @hokensitu_usesheet.bad_jigen, bad_start: @hokensitu_usesheet.bad_start, breakfast: @hokensitu_usesheet.breakfast, bukatu: @hokensitu_usesheet.bukatu, bukatu_flg: @hokensitu_usesheet.bukatu_flg, defecation: @hokensitu_usesheet.defecation, geka_detail: @hokensitu_usesheet.geka_detail, geka_detail_bui: @hokensitu_usesheet.geka_detail_bui, geka_detail_place: @hokensitu_usesheet.geka_detail_place, geka_detail_time: @hokensitu_usesheet.geka_detail_time, geka_riyuu_sonota: @hokensitu_usesheet.geka_riyuu_sonota, go_class: @hokensitu_usesheet.go_class, go_consultation: @hokensitu_usesheet.go_consultation, go_home: @hokensitu_usesheet.go_home, go_home_tel: @hokensitu_usesheet.go_home_tel, go_hospital: @hokensitu_usesheet.go_hospital, go_hospital_name: @hokensitu_usesheet.go_hospital_name, go_rest_from: @hokensitu_usesheet.go_rest_from, go_rest_jigen_from: @hokensitu_usesheet.go_rest_jigen_from, go_rest_jigen_to: @hokensitu_usesheet.go_rest_jigen_to, go_rest_to: @hokensitu_usesheet.go_rest_to, go_sonota: @hokensitu_usesheet.go_sonota, good_sleep: @hokensitu_usesheet.good_sleep, howdo_sonota: @hokensitu_usesheet.howdo_sonota, ketuatu: @hokensitu_usesheet.ketuatu, kyoka: @hokensitu_usesheet.kyoka, kyokatannin: @hokensitu_usesheet.kyokatannin, myakuhaku: @hokensitu_usesheet.myakuhaku, naika_riyuu_sonota: @hokensitu_usesheet.naika_riyuu_sonota, raishitu_time: @hokensitu_usesheet.raishitu_time, seito_id: @hokensitu_usesheet.seito_id, sleep: @hokensitu_usesheet.sleep, taion: @hokensitu_usesheet.taion, wakeup: @hokensitu_usesheet.wakeup, worry: @hokensitu_usesheet.worry, worry_sonota: @hokensitu_usesheet.worry_sonota } }
    assert_redirected_to hokensitu_usesheet_url(@hokensitu_usesheet)
  end

  test "should destroy hokensitu_usesheet" do
    assert_difference('HokensituUsesheet.count', -1) do
      delete hokensitu_usesheet_url(@hokensitu_usesheet)
    end

    assert_redirected_to hokensitu_usesheets_url
  end
end
