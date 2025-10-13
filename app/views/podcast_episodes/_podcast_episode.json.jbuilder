json.extract! podcast_episode, :id, :title, :description, :publish_date, :episode_url, :duration, :show_notes, :tags, :created_at, :updated_at
json.url podcast_episode_url(podcast_episode, format: :json)
