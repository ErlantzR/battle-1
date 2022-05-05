
feature "Enter names" do
  scenario 'players submit naems' do
    visit('/')
    fill_in :player_1_name, with: 'Erlantz'
    fill_in :player_2_name, with: 'Laura'
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content 'Erlantz vs Laura'
  end
end
