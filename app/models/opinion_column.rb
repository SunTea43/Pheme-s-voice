class OpinionColumn < ApplicationRecord
  belongs_to :podcast_episode

  validates :title, presence: true, length: { minimum: 5, maximum: 200 }
  validates :content, presence: true, length: { minimum: 50 }
  validates :author_name, presence: true, length: { minimum: 2, maximum: 100 }
  validates :publish_date, presence: true

  scope :recent, -> { order(publish_date: :desc) }
  scope :published, -> { where("publish_date <= ?", Time.current) }

  def excerpt(length = 150)
    content.length > length ? "#{content[0, length]}..." : content
  end
end
