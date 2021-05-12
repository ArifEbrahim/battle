def sign_in_and_play
  visit('/')
  fill_in('Player 1 Name', with: 'Bob')
  fill_in('Player 2 Name', with: 'Alice')
  click_button('Submit')
end
