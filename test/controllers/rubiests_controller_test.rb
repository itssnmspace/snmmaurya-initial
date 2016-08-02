require 'test_helper'

class RubiestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rubiest = rubiests(:one)
  end

  test "should get index" do
    get rubiests_url
    assert_response :success
  end

  test "should get new" do
    get new_rubiest_url
    assert_response :success
  end

  test "should create rubiest" do
    assert_difference('Rubiest.count') do
      post rubiests_url, params: { rubiest: {  } }
    end

    assert_redirected_to rubiest_url(Rubiest.last)
  end

  test "should show rubiest" do
    get rubiest_url(@rubiest)
    assert_response :success
  end

  test "should get edit" do
    get edit_rubiest_url(@rubiest)
    assert_response :success
  end

  test "should update rubiest" do
    patch rubiest_url(@rubiest), params: { rubiest: {  } }
    assert_redirected_to rubiest_url(@rubiest)
  end

  test "should destroy rubiest" do
    assert_difference('Rubiest.count', -1) do
      delete rubiest_url(@rubiest)
    end

    assert_redirected_to rubiests_url
  end
end
