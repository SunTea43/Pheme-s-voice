class OpinionColumnsController < ApplicationController
  before_action :set_podcast_episode, only: [ :new, :create, :edit, :update, :destroy ]
  before_action :set_opinion_column, only: %i[ show edit update destroy ]

  # GET /opinion_columns or /opinion_columns.json
  def index
    @opinion_columns = OpinionColumn.includes(:podcast_episode).recent
  end

  # GET /opinion_columns/1 or /opinion_columns/1.json
  def show
  end

  # GET /opinion_columns/new or /podcast_episodes/:podcast_episode_id/opinion_columns/new
  def new
    @opinion_column = if @podcast_episode
                        @podcast_episode.opinion_columns.build
    else
                        OpinionColumn.new
    end
  end

  # GET /opinion_columns/1/edit
  def edit
  end

  # POST /opinion_columns or /opinion_columns.json
  def create
    @opinion_column = if @podcast_episode
                        @podcast_episode.opinion_columns.build(opinion_column_params)
    else
                        OpinionColumn.new(opinion_column_params)
    end

    respond_to do |format|
      if @opinion_column.save
        format.html {
          redirect_to @podcast_episode ? @podcast_episode : @opinion_column,
          notice: "Opinion column was successfully created."
        }
        format.json { render :show, status: :created, location: @opinion_column }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @opinion_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opinion_columns/1 or /opinion_columns/1.json
  def update
    respond_to do |format|
      if @opinion_column.update(opinion_column_params)
        format.html { redirect_to @opinion_column, notice: "Opinion column was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @opinion_column }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @opinion_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opinion_columns/1 or /opinion_columns/1.json
  def destroy
    @opinion_column.destroy!

    respond_to do |format|
      format.html {
        redirect_to @podcast_episode ? @podcast_episode : opinion_columns_path,
        notice: "Opinion column was successfully destroyed.",
        status: :see_other
      }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_podcast_episode
      @podcast_episode = PodcastEpisode.find(params[:podcast_episode_id]) if params[:podcast_episode_id]
    end

    def set_opinion_column
      @opinion_column = OpinionColumn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def opinion_column_params
      params.require(:opinion_column).permit(:title, :content, :author_name, :publish_date, :podcast_episode_id)
    end
end
