feature 'Testing infrastructure' do
  scenario 'fill form, submit, see names' do
    visit '/'
    fill_in 'name1', with: 'Charlene'
    fill_in 'name2', with: 'Cindy'
    click_button 'submit'
    # This doesn't explicitly check if redirects to /names
    expect(page).to have_content 'Charlene VS Cindy'
  end
end
