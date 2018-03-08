feature'#switch_turn' do
  context 'seeing the current turn' do
    scenario 'start of the game' do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to have_content "Charlene's turn"
    end
    scenario ' after player 1 attacks player 2' do
      sign_in_and_play
      click_link 'Attack'
      click_link 'Attack'
      expect(page).not_to have_content "Charlene's turn"
      expect(page).to have_content "Cindy's turn"
    end
  end
end
