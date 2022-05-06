feature "Hit points" do
  scenario 'player 2 hit points are shown' do
    visit('/')
    fill_in :player_1_name, with: 'Erlantz'
    fill_in :player_2_name, with: 'Laura'
    click_button 'Submit'

    expect(page).to have_content 'Laura: 60HP'
  end
end