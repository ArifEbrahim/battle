
feature 'names' do
  scenario 'users can add their names' do
    sign_in_and_play
    expect(page).to have_content 'Bob vs Alice'
  end
end

feature 'hit points' do
  scenario 'can see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Player 2 HP: 100'
  end
end

# feature 'attack' do
#   scenario 'can attack and get confirmation' do
#     sign_in_and_play
#     click_button 'Attack'
#     expect(page).to have_content 'You attacked Player 2'
#   end
# end

feature 'attack' do
  scenario 'can attack and deduct HP' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Player 2 HP: 90'
  end
end
