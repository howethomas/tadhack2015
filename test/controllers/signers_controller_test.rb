require 'test_helper'

class SignersControllerTest < ActionController::TestCase
  setup do
    @signer = signers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:signers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create signer" do
    assert_difference('Signer.count') do
      post :create, signer: { mobile: @signer.mobile, name: @signer.name, signed: @signer.signed, town: @signer.town }
    end

    assert_redirected_to signer_path(assigns(:signer))
  end

  test "should show signer" do
    get :show, id: @signer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @signer
    assert_response :success
  end

  test "should update signer" do
    patch :update, id: @signer, signer: { mobile: @signer.mobile, name: @signer.name, signed: @signer.signed, town: @signer.town }
    assert_redirected_to signer_path(assigns(:signer))
  end

  test "should destroy signer" do
    assert_difference('Signer.count', -1) do
      delete :destroy, id: @signer
    end

    assert_redirected_to signers_path
  end
end
