require "application_system_test_case"

class ComeentsTest < ApplicationSystemTestCase
  setup do
    @comeent = comeents(:one)
  end

  test "visiting the index" do
    visit comeents_url
    assert_selector "h1", text: "Comeents"
  end

  test "should create comeent" do
    visit comeents_url
    click_on "New comeent"

    fill_in "Content", with: @comeent.content
    fill_in "Poost", with: @comeent.poost_id
    fill_in "Usser", with: @comeent.usser_id
    click_on "Create Comeent"

    assert_text "Comeent was successfully created"
    click_on "Back"
  end

  test "should update Comeent" do
    visit comeent_url(@comeent)
    click_on "Edit this comeent", match: :first

    fill_in "Content", with: @comeent.content
    fill_in "Poost", with: @comeent.poost_id
    fill_in "Usser", with: @comeent.usser_id
    click_on "Update Comeent"

    assert_text "Comeent was successfully updated"
    click_on "Back"
  end

  test "should destroy Comeent" do
    visit comeent_url(@comeent)
    click_on "Destroy this comeent", match: :first

    assert_text "Comeent was successfully destroyed"
  end
end
