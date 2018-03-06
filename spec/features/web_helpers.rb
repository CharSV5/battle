def sign_in_and_play
  visit '/'
  fill_in 'name1', with: 'Charlene'
  fill_in 'name2', with: 'Cindy'
  click_button 'submit'
end
