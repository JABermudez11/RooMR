require 'test_helper'

class RoomieProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roomie_profile = roomie_profiles(:one)
  end

  test "should get index" do
    get roomie_profiles_url, as: :json
    assert_response :success
  end

  test "should create roomie_profile" do
    assert_difference('RoomieProfile.count') do
      post roomie_profiles_url, params: { roomie_profile: { User_id: @roomie_profile.User_id, ideal_rent: @roomie_profile.ideal_rent, max_rent: @roomie_profile.max_rent } }, as: :json
    end

    assert_response 201
  end

  test "should show roomie_profile" do
    get roomie_profile_url(@roomie_profile), as: :json
    assert_response :success
  end

  test "should update roomie_profile" do
    patch roomie_profile_url(@roomie_profile), params: { roomie_profile: { User_id: @roomie_profile.User_id, ideal_rent: @roomie_profile.ideal_rent, max_rent: @roomie_profile.max_rent } }, as: :json
    assert_response 200
  end

  test "should destroy roomie_profile" do
    assert_difference('RoomieProfile.count', -1) do
      delete roomie_profile_url(@roomie_profile), as: :json
    end

    assert_response 204
  end
end
