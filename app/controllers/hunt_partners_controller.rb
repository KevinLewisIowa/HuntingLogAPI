class HuntPartnersController < ApplicationController
  before_action :set_hunt_partner, only: [:show, :update, :destroy]

  # GET /hunt_partners
  def index
    @hunt_partners = HuntPartner.all

    render json: @hunt_partners
  end

  # GET /hunt_partners/1
  def show
    render json: @hunt_partner
  end

  # POST /hunt_partners
  def create
    @hunt_partner = HuntPartner.new(hunt_partner_params)

    if @hunt_partner.save
      render json: @hunt_partner, status: :created, location: @hunt_partner
    else
      render json: @hunt_partner.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hunt_partners/1
  def update
    if @hunt_partner.update(hunt_partner_params)
      render json: @hunt_partner
    else
      render json: @hunt_partner.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hunt_partners/1
  def destroy
    @hunt_partner.destroy
  end
  
  def partnersForHunt
    @huntpartners = HuntPartner.find_by(hunt_id: params[:huntId])
    
    @huntpartners.each do |item|
      partner = Partner.find(item.partner_id)
      item.partnerName = partner.name
    end
    
    render json: @huntpartners
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hunt_partner
      @hunt_partner = HuntPartner.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hunt_partner_params
      params.require(:hunt_partner).permit(:hunt_id, :partner_id)
    end
end
