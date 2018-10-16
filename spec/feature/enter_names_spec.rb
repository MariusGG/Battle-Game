Capybara.app = Battle

feature "Start of the game" do
  scenario "players enter their names into the form" do
    sign_in_and_play
    expect(page).to have_content "Player1 vs Player2"
  end
