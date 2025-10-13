require "application_system_test_case"

class PodcastEpisodesTest < ApplicationSystemTestCase
  setup do
    @podcast_episode = podcast_episodes(:one)
  end

  test "visiting the index" do
    visit podcast_episodes_url
    assert_selector "h1", text: "Podcast episodes"
  end

  test "should create podcast episode" do
    visit podcast_episodes_url
    click_on "New podcast episode"

    fill_in "Description", with: @podcast_episode.description
    fill_in "Duration", with: @podcast_episode.duration
    fill_in "Episode url", with: @podcast_episode.episode_url
    fill_in "Publish date", with: @podcast_episode.publish_date
    fill_in "Show notes", with: @podcast_episode.show_notes
    fill_in "Tags", with: @podcast_episode.tags
    fill_in "Title", with: @podcast_episode.title
    click_on "Create Podcast episode"

    assert_text "Podcast episode was successfully created"
    click_on "Back"
  end

  test "should update Podcast episode" do
    visit podcast_episode_url(@podcast_episode)
    click_on "Edit this podcast episode", match: :first

    fill_in "Description", with: @podcast_episode.description
    fill_in "Duration", with: @podcast_episode.duration
    fill_in "Episode url", with: @podcast_episode.episode_url
    fill_in "Publish date", with: @podcast_episode.publish_date.to_s
    fill_in "Show notes", with: @podcast_episode.show_notes
    fill_in "Tags", with: @podcast_episode.tags
    fill_in "Title", with: @podcast_episode.title
    click_on "Update Podcast episode"

    assert_text "Podcast episode was successfully updated"
    click_on "Back"
  end

  test "should destroy Podcast episode" do
    visit podcast_episode_url(@podcast_episode)
    click_on "Destroy this podcast episode", match: :first

    assert_text "Podcast episode was successfully destroyed"
  end
end
