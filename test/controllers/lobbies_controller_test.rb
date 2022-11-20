require "test_helper"

class LobbiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lobby = lobbies(:one)
  end

  test "should get index" do
    get lobbies_url
    assert_response :success
  end

  test "should get new" do
    get new_lobby_url
    assert_response :success
  end

  test "should create lobby" do
    assert_difference('Lobby.count') do
      post lobbies_url, params: { lobby: { facts: @lobby.facts, name: @lobby.name } }
    end

    assert_redirected_to lobby_url(Lobby.last)
  end

  test "should show lobby" do
    get lobby_url(@lobby)
    assert_response :success
  end

  test "should get edit" do
    get edit_lobby_url(@lobby)
    assert_response :success
  end

  test "should update lobby" do
    patch lobby_url(@lobby), params: { lobby: { facts: @lobby.facts, name: @lobby.name } }
    assert_redirected_to lobby_url(@lobby)
  end

  test "should destroy lobby" do
    assert_difference('Lobby.count', -1) do
      delete lobby_url(@lobby)
    end

    assert_redirected_to lobbies_url
  end
end
