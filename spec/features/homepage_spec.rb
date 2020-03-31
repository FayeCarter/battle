
feature 'Test infrastructure' do

  scenario 'accesses the homepage' do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end

end