class EpisodeCardCell < Cell::ViewModel
  property :title
  property :description
  property :publish_date
  property :duration
  property :tags
  property :opinion_columns

  def show
    render
  end

  private

  def formatted_duration
    hours = model.duration / 3600
    minutes = (model.duration % 3600) / 60
    seconds = model.duration % 60

    if hours > 0
      "#{hours}h #{minutes}m #{seconds}s"
    elsif minutes > 0
      "#{minutes}m #{seconds}s"
    else
      "#{seconds}s"
    end
  end

  def tag_list
    model.tags.present? ? model.tags.split(",").map(&:strip) : []
  end

  def excerpt
    model.description.length > 120 ? "#{model.description[0, 120]}..." : model.description
  end
end
