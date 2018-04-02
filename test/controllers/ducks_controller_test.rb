require 'test_helper'

class DucksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @duck = ducks(:one)
  end

  test "should get index" do
    get ducks_url, as: :json
    assert_response :success
  end

  test "should create duck" do
    assert_difference('Duck.count') do
      post ducks_url, params: { duck: { species: @duck.species, user_id: @duck.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show duck" do
    get duck_url(@duck), as: :json
    assert_response :success
  end

  test "should update duck" do
    patch duck_url(@duck), params: { duck: { species: @duck.species, user_id: @duck.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy duck" do
    assert_difference('Duck.count', -1) do
      delete duck_url(@duck), as: :json
    end

    assert_response 204
  end
end
