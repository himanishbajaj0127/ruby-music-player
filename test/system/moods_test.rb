require "application_system_test_case"

class MoodsTest < ApplicationSystemTestCase
  setup do
    @mood = moods(:one)
  end

  test "visiting the index" do
    visit moods_url
    assert_selector "h1", text: "Moods"
  end

  test "should create mood" do
    visit moods_url
    click_on "New mood"

    check "Is active" if @mood.is_active
    fill_in "Name", with: @mood.name
    click_on "Create Mood"

    assert_text "Mood was successfully created"
    click_on "Back"
  end

  test "should update Mood" do
    visit mood_url(@mood)
    click_on "Edit this mood", match: :first

    check "Is active" if @mood.is_active
    fill_in "Name", with: @mood.name
    click_on "Update Mood"

    assert_text "Mood was successfully updated"
    click_on "Back"
  end

  test "should destroy Mood" do
    visit mood_url(@mood)
    click_on "Destroy this mood", match: :first

    assert_text "Mood was successfully destroyed"
  end
end
