
def sign_in_and_play
  visit('/')
  fill_in(:player1_name, with: "Ellie")
  fill_in(:player2_name, with: "Marius")
  click_button("Ready to Rumble")
end
