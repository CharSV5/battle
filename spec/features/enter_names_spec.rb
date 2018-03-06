feature 'testing names can be entered' do
  scenario 'fill form, submit, see names' do
    sign_in_and_play
    expect(page).to have_content 'Charlene VS Cindy'
  end
end
