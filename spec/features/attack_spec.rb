feature "Attack player" do
  scenario 'player 1 attacks and gets confirmation' do

    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Erlantz attacked Laura'
    
  end
end