feature 'players can attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Charlene attacked Cindy'
  end
  scenario 'player 2 can attack back' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content 'Cindy attacked Charlene'
  end
end
