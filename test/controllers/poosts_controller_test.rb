require "test_helper"

class PoostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poost = poosts(:one)
  end

  test "should get index" do
    get poosts_url
    assert_response :success
  end

  test "should get new" do
    get new_poost_url
    assert_response :success
  end

  test "should create poost" do
    assert_difference("Poost.count") do
      poost poosts_url, params: { poost: { description: @poost.description, image: @poost.image, usser_id: @poost.usser_id } }
    end

    assert_redirected_to poost_url(Poost.last)
  end

  test "should show poost" do
    get poost_url(@poost)
    assert_response :success
  end

  test "should get edit" do
    get edit_poost_url(@poost)
    assert_response :success
  end

  test "should update poost" do
    patch poost_url(@poost), params: { poost: { description: @poost.description, image: @poost.image, usser_id: @poost.usser_id } }
    assert_redirected_to poost_url(@poost)
  end

  test "should destroy poost" do
    assert_difference("Poost.count", -1) do
      delete poost_url(@poost)
    end

    assert_redirected_to poosts_url
  end
end
