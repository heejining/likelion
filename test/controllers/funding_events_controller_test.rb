require 'test_helper'

class FundingEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funding_event = funding_events(:one)
  end

  test "should get index" do
    get funding_events_url
    assert_response :success
  end

  test "should get new" do
    get new_funding_event_url
    assert_response :success
  end

  test "should create funding_event" do
    assert_difference('FundingEvent.count') do
      post funding_events_url, params: { funding_event: { amount: @funding_event.amount, datetime: @funding_event.datetime, product_id: @funding_event.product_id, user_id: @funding_event.user_id } }
    end

    assert_redirected_to funding_event_url(FundingEvent.last)
  end

  test "should show funding_event" do
    get funding_event_url(@funding_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_funding_event_url(@funding_event)
    assert_response :success
  end

  test "should update funding_event" do
    patch funding_event_url(@funding_event), params: { funding_event: { amount: @funding_event.amount, datetime: @funding_event.datetime, product_id: @funding_event.product_id, user_id: @funding_event.user_id } }
    assert_redirected_to funding_event_url(@funding_event)
  end

  test "should destroy funding_event" do
    assert_difference('FundingEvent.count', -1) do
      delete funding_event_url(@funding_event)
    end

    assert_redirected_to funding_events_url
  end
end
