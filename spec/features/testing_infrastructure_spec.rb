require_relative '../spec_helper'


feature 'I want players to be able to enter their names' do
  scenario 'They enter their names and submit' do
    sign_in_and_play
    expect(page).to have_content'Ash Ketchum vs Brock(rock)'
  end
end

feature 'I want to see player 2s hitpoints' do
  scenario 'viewing hitpoints' do
    sign_in_and_play
    expect(page).to have_content'Brock(rock): HP 100'
  end
end

feature 'Attacking ' do
  scenario 'Attacks player 2' do
    sign_in_and_play
    click_button 'ATTACK!'
    expect(page).to have_content "Ash Ketchum visicously attacks Brock(rock)!!!"
  end
end