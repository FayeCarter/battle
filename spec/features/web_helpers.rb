def sign_in_and_play
  visit '/'
    fill_in('p1_name', with: 'Dave')
    fill_in('p2_name', with: 'Jim')
    click_button('Go!')
end