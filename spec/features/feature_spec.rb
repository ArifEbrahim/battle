
feature 'names' do
  scenario 'users can add their names' do
    visit('/')
    fill_in('Player 1 Name', with: 'Bob')
    fill_in('Player 2 Name', with: 'Alice')
    click_button('Submit')
    expect(page).to have_content 'Bob vs Alice'
  end
end

feature 'hit points' do
  scenario 'can see player 2 hit points' do
    visit('/')
    fill_in('Player 1 Name', with: 'Bob')
    fill_in('Player 2 Name', with: 'Alice')
    click_button('Submit')
    expect(page).to have_content 'Player 2 HP: 100'
  end
end
