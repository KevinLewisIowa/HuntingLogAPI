class HuntsController < ApplicationController
  before_action :set_hunt, only: [:show, :update, :destroy]

  # GET /hunts
  def index
    @hunts = Hunt.all

    render json: @hunts
  end

  # GET /hunts/1
  def show
    render json: @hunt
  end

  # POST /hunts
  def create
    @hunt = Hunt.new(hunt_params)
    #sessiontoken = request.headers["sessiontoken"]
    #@user = User.find_by(session_token: sessiontoken)
    #if @user && (@user.id == @hunt.user_id)
      if @hunt.save
        render json: @hunt, status: :created, location: @hunt
      else
        render json: @hunt.errors, status: :unprocessable_entity
      end
    #else
    #  render 'Not Authorized'
    #end
  end

  # PATCH/PUT /hunts/1
  def update
    if @hunt.update(hunt_params)
      render json: @hunt
    else
      render json: @hunt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hunts/1
  def destroy
    @hunt.destroy
  end
  
  def huntsForUser
    @hunts = Hunt.find_by(user_id: params[:userId])
    
    render json: @hunts
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hunt
      @hunt = Hunt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hunt_params
      params.require(:hunt).permit(:user_id, :location_id, :date, :description, :wind_speed, :wind_direction, :temperature, :weather)
    end
end
