require "application_system_test_case"

class LobbiesTest < ApplicationSystemTestCase
  setup do
    @lobby = lobbies(:one)
  end

  test "visiting the index" do
    visit lobbies_url
    assert_selector "h1", text: "Lobbies"
  end

  test "creating a Lobby" do
    visit lobbies_url
    click_on "New Lobby"

    fill_in "Facts", with: @lobby.facts
    fill_in "Name", with: @lobby.name
    click_on "Create Lobby"

    assert_text "Lobby was successfully created"
    click_on "Back"
  end

  test "updating a Lobby" do
    visit lobbies_url
    click_on "Edit", match: :first

    fill_in "Facts", with: @lobby.facts
    fill_in "Name", with: @lobby.name
    click_on "Update Lobby"

    assert_text "Lobby was successfully updated"
    click_on "Back"
  end

  test "destroying a Lobby" do
    visit lobbies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lobby was successfully destroyed"
  end
end
