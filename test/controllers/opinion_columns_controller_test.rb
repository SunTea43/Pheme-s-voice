require "test_helper"

class OpinionColumnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opinion_column = opinion_columns(:one)
  end

  test "should get index" do
    get opinion_columns_url
    assert_response :success
  end

  test "should get new" do
    get new_opinion_column_url
    assert_response :success
  end

  test "should create opinion_column" do
    assert_difference("OpinionColumn.count") do
      post opinion_columns_url, params: { opinion_column: { author_name: @opinion_column.author_name, content: @opinion_column.content, podcast_episode_id: @opinion_column.podcast_episode_id, publish_date: @opinion_column.publish_date, title: @opinion_column.title } }
    end

    assert_redirected_to opinion_column_url(OpinionColumn.last)
  end

  test "should show opinion_column" do
    get opinion_column_url(@opinion_column)
    assert_response :success
  end

  test "should get edit" do
    get edit_opinion_column_url(@opinion_column)
    assert_response :success
  end

  test "should update opinion_column" do
    patch opinion_column_url(@opinion_column), params: { opinion_column: { author_name: @opinion_column.author_name, content: @opinion_column.content, podcast_episode_id: @opinion_column.podcast_episode_id, publish_date: @opinion_column.publish_date, title: @opinion_column.title } }
    assert_redirected_to opinion_column_url(@opinion_column)
  end

  test "should destroy opinion_column" do
    assert_difference("OpinionColumn.count", -1) do
      delete opinion_column_url(@opinion_column)
    end

    assert_redirected_to opinion_columns_url
  end
end
