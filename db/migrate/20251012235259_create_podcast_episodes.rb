class CreatePodcastEpisodes < ActiveRecord::Migration[7.2]
  def change
    create_table :podcast_episodes do |t|
      t.string :title
      t.text :description
      t.datetime :publish_date
      t.string :episode_url
      t.integer :duration
      t.text :show_notes
      t.text :tags

      t.timestamps
    end
  end
end
