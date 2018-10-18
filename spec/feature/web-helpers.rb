
def sign_in_and_play
  visit('/')
  fill_in :player1_name, with: 'Rosie'
  fill_in :player2_name, with: 'Jim'
  click_button 'Submit'
end

def attack_and_win
  click_button('Attack')
end
