
feature "Enter names" do
  scenario 'players submit naems' do

    sign_in_and_play
    expect(page).to have_content 'Erlantz vs Laura'
    
  end
end
