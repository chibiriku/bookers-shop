require "test_helper"

class Asmin::BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get asmin_books_new_url
    assert_response :success
  end

  test "should get index" do
    get asmin_books_index_url
    assert_response :success
  end

  test "should get edit" do
    get asmin_books_edit_url
    assert_response :success
  end

  test "should get show" do
    get asmin_books_show_url
    assert_response :success
  end

  test "should get destroy" do
    get asmin_books_destroy_url
    assert_response :success
  end
end
