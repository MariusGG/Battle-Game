require 'spec_helper'

Capybara.app = Battle

feature "player puts name" do
  scenario "Players name" do
    sign_in_and_play
    expect(page).to have_text("Ellie VS. Marius")
  end
end

feature 'attacking' do
  scenario "player1 attacks" do
    sign_in_and_play
    click_button("Attack player2")
    expect(page).to have_text "player1 succesfully attacks player2"
  end
end

describe "switch turns" do
  scenario "players taking turns to attack" do
    sign_in_and_play
    expect(page).to have_text("It's now player1's turn.")
  end

  scenario "after player 1 attacks, now player2's turn" do
    sign_in_and_play
    click_button("Attack player2")
    expect(page).to have_text("It's now player2's turn.")
  end
end

feature 'show players have HP:' do
  scenario "player 2 has 100HP" do
    sign_in_and_play
    expect(page).to have_text('Marius\'s HP : 100')
  end

  scenario "player 2's hit points decrease by 20" do
    sign_in_and_play
    click_button('Attack Player2')
    expect(page).to have_text('Marius\'s HP : 80')
  end
end

feature "loser is?" do
	scenario "player 2 loses" do
	sign_in_and_play
	expect(page).to have_text("Marius's HP : 0")
	end
end
