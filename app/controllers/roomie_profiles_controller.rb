class RoomieProfilesController < ApplicationController
  before_action :set_roomie_profile, only: [:show, :update, :destroy]

  # GET /roomie_profiles
  def index
    @roomie_profiles = RoomieProfile.all

    render json: @roomie_profiles
  end

  # GET /roomie_profiles/1
  def show
    render json: @roomie_profile
  end

  # POST /roomie_profiles
  def create
    @roomie_profile = RoomieProfile.new(roomie_profile_params)

    if @roomie_profile.save
      render json: @roomie_profile, status: :created, location: @roomie_profile
    else
      render json: @roomie_profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /roomie_profiles/1
  def update
    if @roomie_profile.update(roomie_profile_params)
      render json: @roomie_profile
    else
      render json: @roomie_profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /roomie_profiles/1
  def destroy
    @roomie_profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roomie_profile
      @roomie_profile = RoomieProfile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def roomie_profile_params
      params.require(:roomie_profile).permit(:max_rent, :ideal_rent, :User_id)
    end
end
