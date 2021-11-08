feature 'Can view a list of bookmarks' do
  scenario 'user can view a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'Makers Academy'
  end
end