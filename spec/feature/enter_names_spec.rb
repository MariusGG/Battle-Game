Capybara.app = Battle

feature "Start of the game" do
  scenario "players enter their names into the form" do
    sign_in_and_play
    expect(page).to have_content "Player1 vs. Player2"
  end
end

scenario "I can see player 2s hit points" do
    sign_in_and_play
    expect(page).to have_content "HP"
  end
end
