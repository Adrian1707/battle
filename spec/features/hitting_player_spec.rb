require 'spec_helper'


feature 'hitting player 2' do
  scenario 'get confirmation of hit' do
    sign_in_and_play
    p @player_1_name
    click_button "Attack"
    expect(page).to have_content("Adrian attacked Dave")
  end
end
