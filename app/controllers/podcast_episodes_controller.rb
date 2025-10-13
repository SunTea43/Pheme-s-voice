class PodcastEpisodesController < ApplicationController
  before_action :set_podcast_episode, only: %i[ show edit update destroy ]

  # GET /podcast_episodes or /podcast_episodes.json
  def index
    @podcast_episodes = PodcastEpisode.includes(:opinion_columns).recent
  end

  # GET /podcast_episodes/1 or /podcast_episodes/1.json
  def show
  end

  # GET /podcast_episodes/new
  def new
    @podcast_episode = PodcastEpisode.new
  end

  # GET /podcast_episodes/1/edit
  def edit
  end

  # POST /podcast_episodes or /podcast_episodes.json
  def create
    @podcast_episode = PodcastEpisode.new(podcast_episode_params)

    respond_to do |format|
      if @podcast_episode.save
        format.html { redirect_to @podcast_episode, notice: "Podcast episode was successfully created." }
        format.json { render :show, status: :created, location: @podcast_episode }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @podcast_episode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /podcast_episodes/1 or /podcast_episodes/1.json
  def update
    respond_to do |format|
      if @podcast_episode.update(podcast_episode_params)
        format.html { redirect_to @podcast_episode, notice: "Podcast episode was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @podcast_episode }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @podcast_episode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /podcast_episodes/1 or /podcast_episodes/1.json
  def destroy
    @podcast_episode.destroy!

    respond_to do |format|
      format.html { redirect_to podcast_episodes_path, notice: "Podcast episode was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_podcast_episode
      @podcast_episode = PodcastEpisode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def podcast_episode_params
      params.require(:podcast_episode).permit(:title, :description, :publish_date, :episode_url, :duration, :show_notes, :tags)
    end
end
