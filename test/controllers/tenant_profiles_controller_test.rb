require 'test_helper'

class TenantProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tenant_profile = tenant_profiles(:one)
  end

  test "should get index" do
    get tenant_profiles_url, as: :json
    assert_response :success
  end

  test "should create tenant_profile" do
    assert_difference('TenantProfile.count') do
      post tenant_profiles_url, params: { tenant_profile: { User_id: @tenant_profile.User_id, description: @tenant_profile.description, location: @tenant_profile.location, pet_friendly: @tenant_profile.pet_friendly, room_rent: @tenant_profile.room_rent, rooms: @tenant_profile.rooms } }, as: :json
    end

    assert_response 201
  end

  test "should show tenant_profile" do
    get tenant_profile_url(@tenant_profile), as: :json
    assert_response :success
  end

  test "should update tenant_profile" do
    patch tenant_profile_url(@tenant_profile), params: { tenant_profile: { User_id: @tenant_profile.User_id, description: @tenant_profile.description, location: @tenant_profile.location, pet_friendly: @tenant_profile.pet_friendly, room_rent: @tenant_profile.room_rent, rooms: @tenant_profile.rooms } }, as: :json
    assert_response 200
  end

  test "should destroy tenant_profile" do
    assert_difference('TenantProfile.count', -1) do
      delete tenant_profile_url(@tenant_profile), as: :json
    end

    assert_response 204
  end
end
