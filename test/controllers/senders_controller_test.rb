require 'test_helper'

class SendersControllerTest < ActionController::TestCase
  setup do
    @sender = senders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:senders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sender" do
    assert_difference('Sender.count') do
      post :create, sender: { address: @sender.address, city: @sender.city, dob: @sender.dob, email: @sender.email, first_name: @sender.first_name, last_name: @sender.last_name, phone: @sender.phone, state: @sender.state, zip: @sender.zip }
    end

    assert_redirected_to sender_path(assigns(:sender))
  end

  test "should show sender" do
    get :show, id: @sender
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sender
    assert_response :success
  end

  test "should update sender" do
    patch :update, id: @sender, sender: { address: @sender.address, city: @sender.city, dob: @sender.dob, email: @sender.email, first_name: @sender.first_name, last_name: @sender.last_name, phone: @sender.phone, state: @sender.state, zip: @sender.zip }
    assert_redirected_to sender_path(assigns(:sender))
  end

  test "should destroy sender" do
    assert_difference('Sender.count', -1) do
      delete :destroy, id: @sender
    end

    assert_redirected_to senders_path
  end
end
