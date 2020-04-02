def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Ash Ketchum'
  fill_in :player_2_name, with: 'Brock(rock)'
  click_button 'submit'
end