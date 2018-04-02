class HuntDuckCountsController < ApplicationController
  before_action :set_hunt_duck_count, only: [:show, :update, :destroy]

  # GET /hunt_duck_counts
  def index
    @hunt_duck_counts = HuntDuckCount.all

    render json: @hunt_duck_counts
  end

  # GET /hunt_duck_counts/1
  def show
    render json: @hunt_duck_count
  end

  # POST /hunt_duck_counts
  def create
    @hunt_duck_count = HuntDuckCount.new(hunt_duck_count_params)

    if @hunt_duck_count.save
      render json: @hunt_duck_count, status: :created, location: @hunt_duck_count
    else
      render json: @hunt_duck_count.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hunt_duck_counts/1
  def update
    if @hunt_duck_count.update(hunt_duck_count_params)
      render json: @hunt_duck_count
    else
      render json: @hunt_duck_count.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hunt_duck_counts/1
  def destroy
    @hunt_duck_count.destroy
  end

  def getDucksForHunt
    @huntducks = HuntDuckCount.find_by(hunt_id: params[:huntId])
    @huntducks.each do |item|
      species = Duck.find(item.duck_id)
      item.duckName = species.name
    end
    render json: @huntducks
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hunt_duck_count
      @hunt_duck_count = HuntDuckCount.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hunt_duck_count_params
      params.require(:hunt_duck_count).permit(:hunt_id, :duck_id, :drake_count, :hen_count, :is_group, :is_individual)
    end
end
