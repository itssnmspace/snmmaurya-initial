require 'test_helper'

class RubiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruby = rubies(:one)
  end

  test "should get index" do
    get rubies_url
    assert_response :success
  end

  test "should get new" do
    get new_ruby_url
    assert_response :success
  end

  test "should create ruby" do
    assert_difference('Ruby.count') do
      post rubies_url, params: { ruby: { description: @ruby.description, title: @ruby.title, user_id: @ruby.user_id } }
    end

    assert_redirected_to ruby_url(Ruby.last)
  end

  test "should show ruby" do
    get ruby_url(@ruby)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruby_url(@ruby)
    assert_response :success
  end

  test "should update ruby" do
    patch ruby_url(@ruby), params: { ruby: { description: @ruby.description, title: @ruby.title, user_id: @ruby.user_id } }
    assert_redirected_to ruby_url(@ruby)
  end

  test "should destroy ruby" do
    assert_difference('Ruby.count', -1) do
      delete ruby_url(@ruby)
    end

    assert_redirected_to rubies_url
  end
end
