feature "Hit points" do
  scenario 'player 2 hit points are shown' do
    sign_in_and_play
    expect(page).to have_content 'Laura: 60HP'
  end

  scenario 'player 2 loses 10 hit points when attacked' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Next'
    expect(page).not_to have_content 'Laura: 60HP'
    expect(page).to have_content 'Laura: 50HP'
  end

end