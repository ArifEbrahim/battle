
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
