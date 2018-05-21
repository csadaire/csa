require 'test_helper'

class PoetriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poetry = poetries(:one)
  end

  test "should get index" do
    get poetries_url
    assert_response :success
  end

  test "should get new" do
    get new_poetry_url
    assert_response :success
  end

  test "should create poetry" do
    assert_difference('Poetry.count') do
      post poetries_url, params: { poetry: { body: @poetry.body, title: @poetry.title, views: @poetry.views } }
    end

    assert_redirected_to poetry_url(Poetry.last)
  end

  test "should show poetry" do
    get poetry_url(@poetry)
    assert_response :success
  end

  test "should get edit" do
    get edit_poetry_url(@poetry)
    assert_response :success
  end

  test "should update poetry" do
    patch poetry_url(@poetry), params: { poetry: { body: @poetry.body, title: @poetry.title, views: @poetry.views } }
    assert_redirected_to poetry_url(@poetry)
  end

  test "should destroy poetry" do
    assert_difference('Poetry.count', -1) do
      delete poetry_url(@poetry)
    end

    assert_redirected_to poetries_url
  end
end
