feature 'can see players hit points' do
  scenario 'shows player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Cindy HP = 100'
  end
  scenario 'shows player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Charlene HP = 100'
  end
  scenario 'reduces player HP after attack' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'Cindy HP = 100'
    expect(page).to have_content 'Cindy HP = 90'
  end
end
