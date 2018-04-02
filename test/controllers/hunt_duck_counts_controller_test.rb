require 'test_helper'

class HuntDuckCountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hunt_duck_count = hunt_duck_counts(:one)
  end

  test "should get index" do
    get hunt_duck_counts_url, as: :json
    assert_response :success
  end

  test "should create hunt_duck_count" do
    assert_difference('HuntDuckCount.count') do
      post hunt_duck_counts_url, params: { hunt_duck_count: { drake_count: @hunt_duck_count.drake_count, duck_id: @hunt_duck_count.duck_id, hen_count: @hunt_duck_count.hen_count, hunt_id: @hunt_duck_count.hunt_id, is_group: @hunt_duck_count.is_group, is_individual: @hunt_duck_count.is_individual } }, as: :json
    end

    assert_response 201
  end

  test "should show hunt_duck_count" do
    get hunt_duck_count_url(@hunt_duck_count), as: :json
    assert_response :success
  end

  test "should update hunt_duck_count" do
    patch hunt_duck_count_url(@hunt_duck_count), params: { hunt_duck_count: { drake_count: @hunt_duck_count.drake_count, duck_id: @hunt_duck_count.duck_id, hen_count: @hunt_duck_count.hen_count, hunt_id: @hunt_duck_count.hunt_id, is_group: @hunt_duck_count.is_group, is_individual: @hunt_duck_count.is_individual } }, as: :json
    assert_response 200
  end

  test "should destroy hunt_duck_count" do
    assert_difference('HuntDuckCount.count', -1) do
      delete hunt_duck_count_url(@hunt_duck_count), as: :json
    end

    assert_response 204
  end
end
