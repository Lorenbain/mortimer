require 'test_helper'

class AccessEntriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:access_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create access_entry" do
    assert_difference('AccessEntry.count') do
      post :create, :access_entry => { }
    end

    assert_redirected_to access_entry_path(assigns(:access_entry))
  end

  test "should show access_entry" do
    get :show, :id => access_entries(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => access_entries(:one).id
    assert_response :success
  end

  test "should update access_entry" do
    put :update, :id => access_entries(:one).id, :access_entry => { }
    assert_redirected_to access_entry_path(assigns(:access_entry))
  end

  test "should destroy access_entry" do
    assert_difference('AccessEntry.count', -1) do
      delete :destroy, :id => access_entries(:one).id
    end

    assert_redirected_to access_entries_path
  end
end
