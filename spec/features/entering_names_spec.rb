require 'spec_helper'

feature 'Submitting form' do
  scenario 'Submitting user name' do
    visit '/'
    fill_in :player_1_name, with: 'Adrian'
    fill_in :player_2_name, with: 'Dave'
    click_button "Submit"
    expect(page).to have_content "Adrian vs. Dave"
  end
end

feature 'Hit points' do
  scenario 'seeing player 2 hit points' do
    visit '/'
    fill_in :player_1_name, with: 'Adrian'
    fill_in :player_2_name, with: 'Dave'
    click_button "Submit"
    expect(page).to have_content 'Dave: 60HP'
  end
end
