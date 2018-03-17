require 'test_helper'

class EncriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @encription = encriptions(:one)
  end

  test "should get index" do
    get encriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_encription_url
    assert_response :success
  end

  test "should create encription" do
    assert_difference('Encription.count') do
      post encriptions_url, params: { encription: { name: @encription.name, user_id: @encription.user_id, value: @encription.value } }
    end

    assert_redirected_to encription_url(Encription.last)
  end

  test "should show encription" do
    get encription_url(@encription)
    assert_response :success
  end

  test "should get edit" do
    get edit_encription_url(@encription)
    assert_response :success
  end

  test "should update encription" do
    patch encription_url(@encription), params: { encription: { name: @encription.name, user_id: @encription.user_id, value: @encription.value } }
    assert_redirected_to encription_url(@encription)
  end

  test "should destroy encription" do
    assert_difference('Encription.count', -1) do
      delete encription_url(@encription)
    end

    assert_redirected_to encriptions_url
  end
end
