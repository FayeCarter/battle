
feature 'Test infrastructure' do
  scenario 'accesses the homepage' do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end
end

feature 'entering a name' do
  scenario 'should be able to enter name' do
    visit('/')
    fill_in 'player_1_name', with: 'Ed'
    fill_in 'player_2_name', with: 'Faye'
    click_button 'Submit'
    expect(page).to have_content 'Ed vs. Faye'
  end
end

feature 'how are you feeling?' do
  scenario ' should be able to see players hittoppoint' do
    visit('/')
    fill_in 'player_1_name', with: 'Ed'
    fill_in 'player_2_name', with: 'Faye'
    click_button 'Submit'
    expect(page).to have_content "Ed's Hit Points: 20"
    expect(page).to have_content "Faye's Hit Points: 20"
  end
end
