require 'test_helper'

class HuntPartnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hunt_partner = hunt_partners(:one)
  end

  test "should get index" do
    get hunt_partners_url, as: :json
    assert_response :success
  end

  test "should create hunt_partner" do
    assert_difference('HuntPartner.count') do
      post hunt_partners_url, params: { hunt_partner: { hunt_id: @hunt_partner.hunt_id, partner_id: @hunt_partner.partner_id } }, as: :json
    end

    assert_response 201
  end

  test "should show hunt_partner" do
    get hunt_partner_url(@hunt_partner), as: :json
    assert_response :success
  end

  test "should update hunt_partner" do
    patch hunt_partner_url(@hunt_partner), params: { hunt_partner: { hunt_id: @hunt_partner.hunt_id, partner_id: @hunt_partner.partner_id } }, as: :json
    assert_response 200
  end

  test "should destroy hunt_partner" do
    assert_difference('HuntPartner.count', -1) do
      delete hunt_partner_url(@hunt_partner), as: :json
    end

    assert_response 204
  end
end
