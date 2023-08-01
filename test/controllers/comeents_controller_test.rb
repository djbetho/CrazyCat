require "test_helper"

class ComeentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comeent = comeents(:one)
  end

  test "should get index" do
    get comeents_url
    assert_response :success
  end

  test "should get new" do
    get new_comeent_url
    assert_response :success
  end

  test "should create comeent" do
    assert_difference("Comeent.count") do
      post comeents_url, params: { comeent: { content: @comeent.content, poost_id: @comeent.poost_id, usser_id: @comeent.usser_id } }
    end

    assert_redirected_to comeent_url(Comeent.last)
  end

  test "should show comeent" do
    get comeent_url(@comeent)
    assert_response :success
  end

  test "should get edit" do
    get edit_comeent_url(@comeent)
    assert_response :success
  end

  test "should update comeent" do
    patch comeent_url(@comeent), params: { comeent: { content: @comeent.content, poost_id: @comeent.poost_id, usser_id: @comeent.usser_id } }
    assert_redirected_to comeent_url(@comeent)
  end

  test "should destroy comeent" do
    assert_difference("Comeent.count", -1) do
      delete comeent_url(@comeent)
    end

    assert_redirected_to comeents_url
  end
end
