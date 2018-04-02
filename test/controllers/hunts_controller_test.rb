require 'test_helper'

class HuntsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hunt = hunts(:one)
  end

  test "should get index" do
    get hunts_url, as: :json
    assert_response :success
  end

  test "should create hunt" do
    assert_difference('Hunt.count') do
      post hunts_url, params: { hunt: { date: @hunt.date, description: @hunt.description, location_id: @hunt.location_id, temperature: @hunt.temperature, user_id: @hunt.user_id, weather: @hunt.weather, wind_direction: @hunt.wind_direction, wind_speed: @hunt.wind_speed } }, as: :json
    end

    assert_response 201
  end

  test "should show hunt" do
    get hunt_url(@hunt), as: :json
    assert_response :success
  end

  test "should update hunt" do
    patch hunt_url(@hunt), params: { hunt: { date: @hunt.date, description: @hunt.description, location_id: @hunt.location_id, temperature: @hunt.temperature, user_id: @hunt.user_id, weather: @hunt.weather, wind_direction: @hunt.wind_direction, wind_speed: @hunt.wind_speed } }, as: :json
    assert_response 200
  end

  test "should destroy hunt" do
    assert_difference('Hunt.count', -1) do
      delete hunt_url(@hunt), as: :json
    end

    assert_response 204
  end
end
