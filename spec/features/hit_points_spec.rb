feature 'can see players hit points' do
  scenario 'shows players hit points after names added' do
    sign_in_and_play
    expect(page).to have_content 'Charlene HP = 100'
  end
end
