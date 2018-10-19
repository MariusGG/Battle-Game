def sign_in_and_play
  visit '/'
  fill_in('player_1', with: 'Ellie')
  fill_in('player_2', with: 'Marius')
  click_button('Submit')
end
