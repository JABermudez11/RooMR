class TenantProfilesController < ApplicationController
  before_action :set_tenant_profile, only: [:show, :update, :destroy]

  # GET /tenant_profiles
  def index
    @tenant_profiles = TenantProfile.all

    render json: @tenant_profiles
  end

  # GET /tenant_profiles/1
  def show
    render json: @tenant_profile
  end

  # POST /tenant_profiles
  def create
    @tenant_profile = TenantProfile.new(tenant_profile_params)

    if @tenant_profile.save
      render json: @tenant_profile, status: :created, location: @tenant_profile
    else
      render json: @tenant_profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tenant_profiles/1
  def update
    if @tenant_profile.update(tenant_profile_params)
      render json: @tenant_profile
    else
      render json: @tenant_profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tenant_profiles/1
  def destroy
    @tenant_profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenant_profile
      @tenant_profile = TenantProfile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tenant_profile_params
      params.require(:tenant_profile).permit(:room_rent, :rooms, :pet_friendly, :description, :location, :User_id)
    end
end
