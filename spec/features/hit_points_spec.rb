feature "Hit points" do
  scenario 'player 2 hit points are shown' do
    sign_in_and_play
    expect(page).to have_content 'Laura: 60HP'
  end
end