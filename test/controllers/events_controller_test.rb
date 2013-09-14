require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index, format: :json
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { latitude: @event.latitude, longitude: @event.longitude, name: @event.name, time: @event.time }, format: :json
    end

    assert_response :created
  end

  test "should show event" do
    get :show, id: @event, format: :json
    assert_response :success
  end

  test "should update event" do
    patch :update, id: @event, event: { latitude: @event.latitude, longitude: @event.longitude, name: @event.name, time: @event.time }, format: :json
    assert_response :no_content
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event, format: :json
    end

    assert_response :no_content
  end
end
