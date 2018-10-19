

feature 'player names' do
   scenario 'can take form input and render it onscreen' do
    sign_in_and_play
    expect(page).to have_content('Ellie vs. Marius')
  end
end


feature '#switch_turns' do
  scenario 'switching turns between players' do
     sign_in_and_play
     click_on('Random Attack')
     click_on('Random Attack')
     expect(page).to have_content("Ellie #{Game.game.player1.hp}/60hp")
   end
 end

 feature 'attacking' do
   scenario 'can attack player' do
     sign_in_and_play
     click_on('Random Attack')
     expect(page).to have_content('Ellie attacked Marius')
   end

 scenario 'reduces points of the second player' do
     sign_in_and_play
     click_on('Random Attack')
     expect(page).to have_content("Marius #{Game.game.player2.hp}/60hp")
   end
 end

 feature 'hit points' do
   scenario 'can display player hp' do
     sign_in_and_play
     expect(page).to have_content("Marius	60/60hp)"
   end
 end

 feature 'losing' do
   scenario 'player loses when hp reaches 0' do
     sign_in_and_play
     until Game.game.lost? do
       click_on("Random Attack")
     end
     expect(page).to have_content("has lost the game.")
   end
 end
