
feature 'Test infrastructure' do
  scenario 'accesses the homepage' do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end
end

feature 'entering a name' do
  scenario 'should be able to enter name' do
    visit('/')
    fill_in 'players', with: 'Ed'
    click_button 'submit'
    expect(page).to have_content 'Ed'
  end
end
