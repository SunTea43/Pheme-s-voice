require "test_helper"

class OpinionColumnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opinion_column = opinion_columns(:one)
    @podcast_episode = podcast_episodes(:one)
  end

  test "should get index" do
    get opinion_columns_url
    assert_response :success
  end

  test "should get new" do
    get new_podcast_episode_opinion_column_url(@podcast_episode)
    assert_response :success
  end

  test "should create opinion_column" do
    assert_difference("OpinionColumn.count") do
      post podcast_episode_opinion_columns_url(@podcast_episode), params: {
        opinion_column: {
          author_name: "John Doe",
          content: @opinion_column.content,
          podcast_episode_id: @podcast_episode.id,
          publish_date: @opinion_column.publish_date,
          title: @opinion_column.title
        },
        podcast_episode: { id: @podcast_episode.id }
      }
    end

    assert_redirected_to podcast_episode_url(@podcast_episode)
  end

  test "should show opinion_column" do
    get opinion_column_url(@opinion_column)
    assert_response :success
  end

  test "should get edit" do
    get edit_podcast_episode_opinion_column_url(@podcast_episode, @opinion_column)
    assert_response :success
  end

  test "should update opinion_column" do
    patch podcast_episode_opinion_column_url(@podcast_episode, @opinion_column), params: { opinion_column: { author_name: @opinion_column.author_name, content: @opinion_column.content, podcast_episode_id: @opinion_column.podcast_episode_id, publish_date: @opinion_column.publish_date, title: @opinion_column.title } }
    assert_redirected_to opinion_column_url(@opinion_column)
  end

  test "should destroy opinion_column" do
    assert_difference("OpinionColumn.count", -1) do
      delete podcast_episode_opinion_column_url(@podcast_episode, @opinion_column)
    end

    assert_redirected_to podcast_episode_url(@podcast_episode)
  end
end
