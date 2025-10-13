require "application_system_test_case"

class OpinionColumnsTest < ApplicationSystemTestCase
  setup do
    @opinion_column = opinion_columns(:one)
  end

  test "visiting the index" do
    visit opinion_columns_url
    assert_selector "h1", text: "Opinion columns"
  end

  test "should create opinion column" do
    visit opinion_columns_url
    click_on "New opinion column"

    fill_in "Author name", with: @opinion_column.author_name
    fill_in "Content", with: @opinion_column.content
    fill_in "Podcast episode", with: @opinion_column.podcast_episode_id
    fill_in "Publish date", with: @opinion_column.publish_date
    fill_in "Title", with: @opinion_column.title
    click_on "Create Opinion column"

    assert_text "Opinion column was successfully created"
    click_on "Back"
  end

  test "should update Opinion column" do
    visit opinion_column_url(@opinion_column)
    click_on "Edit this opinion column", match: :first

    fill_in "Author name", with: @opinion_column.author_name
    fill_in "Content", with: @opinion_column.content
    fill_in "Podcast episode", with: @opinion_column.podcast_episode_id
    fill_in "Publish date", with: @opinion_column.publish_date.to_s
    fill_in "Title", with: @opinion_column.title
    click_on "Update Opinion column"

    assert_text "Opinion column was successfully updated"
    click_on "Back"
  end

  test "should destroy Opinion column" do
    visit opinion_column_url(@opinion_column)
    click_on "Destroy this opinion column", match: :first

    assert_text "Opinion column was successfully destroyed"
  end
end
