require "application_system_test_case"

class PoostsTest < ApplicationSystemTestCase
  setup do
    @poost = poosts(:one)
  end

  test "visiting the index" do
    visit poosts_url
    assert_selector "h1", text: "Poosts"
  end

  test "should create poost" do
    visit poosts_url
    click_on "New poost"

    fill_in "Description", with: @poost.description
    fill_in "Image", with: @poost.image
    fill_in "Usser", with: @poost.usser_id
    click_on "Create Poost"

    assert_text "Poost was successfully created"
    click_on "Back"
  end

  test "should update Poost" do
    visit poost_url(@poost)
    click_on "Edit this poost", match: :first

    fill_in "Description", with: @poost.description
    fill_in "Image", with: @poost.image
    fill_in "Usser", with: @poost.usser_id
    click_on "Update Poost"

    assert_text "Poost was successfully updated"
    click_on "Back"
  end

  test "should destroy Poost" do
    visit poost_url(@poost)
    click_on "Destroy this poost", match: :first

    assert_text "Poost was successfully destroyed"
  end
end
