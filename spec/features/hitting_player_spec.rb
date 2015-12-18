require 'spec_helper'


feature 'hitting player 2' do
  scenario 'get confirmation of hit' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Adrian attacked Dave")
  end

  # scenario 'player hp should be reduced' do
  #   sign_in_and_play
  #   click_button "Attack"
  #
  # end
end
