require_relative '../spec_helper'


feature 'I want players to be able to enter their names' do
  scenario 'They enter their names and submit' do
    visit('/')
    fill_in :player_1_name, with: 'Ash Ketchum'
    fill_in :player_2_name, with: 'Brock(rock)'
    click_button 'submit'
    expect(page).to have_content'Ash Ketchum vs Brock(rock)'
  end
end

feature 'I want to see player 2s hitpoints' do
  scenario 'viewing hitpoints' do
    visit('/')
    fill_in :player_1_name, with: 'Ash Ketchum'
    fill_in :player_2_name, with: 'Brock(rock)'
    click_button 'submit'
    expect(page).to have_content'Brock(rock): HP 100'
  end
end