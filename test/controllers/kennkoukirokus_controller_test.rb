require 'test_helper'

class KennkoukirokusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kennkoukiroku = kennkoukirokus(:one)
  end

  test "should get index" do
    get kennkoukirokus_url
    assert_response :success
  end

  test "should get new" do
    get new_kennkoukiroku_url
    assert_response :success
  end

  test "should create kennkoukiroku" do
    assert_difference('Kennkoukiroku.count') do
      post kennkoukirokus_url, params: { kennkoukiroku: { byouketu_id: @kennkoukiroku.byouketu_id, gakunenn_id: @kennkoukiroku.gakunenn_id, hiduke: @kennkoukiroku.hiduke, kesseki: @kennkoukiroku.kesseki, kibiki: @kennkoukiroku.kibiki, seito_id: @kennkoukiroku.seito_id, syuttei: @kennkoukiroku.syuttei, tikoku_id: @kennkoukiroku.tikoku_id, zikoketu: @kennkoukiroku.zikoketu } }
    end

    assert_redirected_to kennkoukiroku_url(Kennkoukiroku.last)
  end

  test "should show kennkoukiroku" do
    get kennkoukiroku_url(@kennkoukiroku)
    assert_response :success
  end

  test "should get edit" do
    get edit_kennkoukiroku_url(@kennkoukiroku)
    assert_response :success
  end

  test "should update kennkoukiroku" do
    patch kennkoukiroku_url(@kennkoukiroku), params: { kennkoukiroku: { byouketu_id: @kennkoukiroku.byouketu_id, gakunenn_id: @kennkoukiroku.gakunenn_id, hiduke: @kennkoukiroku.hiduke, kesseki: @kennkoukiroku.kesseki, kibiki: @kennkoukiroku.kibiki, seito_id: @kennkoukiroku.seito_id, syuttei: @kennkoukiroku.syuttei, tikoku_id: @kennkoukiroku.tikoku_id, zikoketu: @kennkoukiroku.zikoketu } }
    assert_redirected_to kennkoukiroku_url(@kennkoukiroku)
  end

  test "should destroy kennkoukiroku" do
    assert_difference('Kennkoukiroku.count', -1) do
      delete kennkoukiroku_url(@kennkoukiroku)
    end

    assert_redirected_to kennkoukirokus_url
  end
end
