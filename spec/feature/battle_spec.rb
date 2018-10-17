
Capybara.app = Battle

feature "Start of the game" do
  scenario "two players can enter their names" do
    sign_in_and_play
    expect(page).to have_content "Player1 vs Player2"
  end

  scenario "I can see player 2s hit points" do
    sign_in_and_play
    expect(page).to have_content "HP"
  end
end

feature "Attacking player2" do
  scenario "when I attack I get confirmation of the attack" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Player2s HP = 100"
  end
end

feature "Switching turns" do
  scenario "after player 1 attacks player 2, player 2 can attack" do
    sign_in_and_play
    2.times { click_button('Attack') }
    expect(page).to have_content "Name1's turn: make a move"
    expect(page).to have_content "Player 1s HP = 50"
  end
end
