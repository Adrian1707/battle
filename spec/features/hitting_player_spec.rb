require 'spec_helper'


feature 'hitting player 2' do
  scenario 'get confirmation of hit' do
    sign_in_and_play
    click_button "Attack Player 2"
    expect(page).to have_content("Adrian attacked Dave")
  end

  scenario 'player hp should be reduced' do
    sign_in_and_play
    click_button "Attack Player 1"
    click_link "Back"
    click_button "Attack Player 2"
    click_link "Back"
    expect(page).to have_content "Adrian: 50HP"
    expect(page).to have_content "Dave: 50HP"
  end
end
