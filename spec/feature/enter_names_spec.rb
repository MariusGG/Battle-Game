Capybara.app = Battle

feature "Start of the game" do
  scenario "players enter their names into the form" do
    sign_in_and_play
    expect(page).to have_content "Player1 vs. Player2"
  end
end
feature "seeing player2 hp" do
  scenario "I can see player2s hit points" do
      sign_in_and_play
      expect(page).to have_content "HP"
    end
  end

feature "Attacking player2" do
  scenario "when I attack I get confirmation of the attack" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Player2s HP = 50"
  end
end

feature "Switching turns" do
  scenario "after player1 attacks player2, player2 can attack" do
    sign_in_and_play
    2.times { click_button('Attack') }
    expect(page).to have_content "Name1's turn: make a move"
    expect(page).to have_content "Player1s HP = 50"
  end
end
