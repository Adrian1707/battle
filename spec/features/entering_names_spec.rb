require 'spec_helper'


feature 'Submitting form' do
  scenario 'Submitting user name' do
    sign_in_and_play
    expect(page).to have_content "Adrian vs. Dave"
  end
end

feature 'Hit points' do
  scenario 'seeing player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Dave: 60HP'
  end
end
