class PodcastEpisode < ApplicationRecord
  has_many :opinion_columns, dependent: :destroy

  validates :title, presence: true, length: { minimum: 5, maximum: 200 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :episode_url, presence: true, format: { with: URI.regexp(%w[http https]), message: "must be a valid URL" }
  validates :duration, presence: true, numericality: { greater_than: 0 }
  validates :publish_date, presence: true

  scope :recent, -> { order(publish_date: :desc) }
  scope :published, -> { where("publish_date <= ?", Time.current) }

  def formatted_duration
    hours = duration / 3600
    minutes = (duration % 3600) / 60
    seconds = duration % 60

    if hours > 0
      "#{hours}h #{minutes}m #{seconds}s"
    elsif minutes > 0
      "#{minutes}m #{seconds}s"
    else
      "#{seconds}s"
    end
  end

  def tag_list
    tags.present? ? tags.split(",").map(&:strip) : []
  end
end
