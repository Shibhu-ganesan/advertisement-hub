require "test_helper"

class AdhubsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adhub = adhubs(:one)
  end

  test "should get index" do
    get adhubs_url
    assert_response :success
  end

  test "should get new" do
    get new_adhub_url
    assert_response :success
  end

  test "should create adhub" do
    assert_difference('Adhub.count') do
      post adhubs_url, params: { adhub: { description: @adhub.description, title: @adhub.title } }
    end

    assert_redirected_to adhub_url(Adhub.last)
  end

  test "should show adhub" do
    get adhub_url(@adhub)
    assert_response :success
  end

  test "should get edit" do
    get edit_adhub_url(@adhub)
    assert_response :success
  end

  test "should update adhub" do
    patch adhub_url(@adhub), params: { adhub: { description: @adhub.description, title: @adhub.title } }
    assert_redirected_to adhub_url(@adhub)
  end

  test "should destroy adhub" do
    assert_difference('Adhub.count', -1) do
      delete adhub_url(@adhub)
    end

    assert_redirected_to adhubs_url
  end
end
