feature 'Deletes a bookmark' do
  scenario 'A user can delete a bookmark' do
    Bookmark.create(url: 'www.makersacademy.com', title: 'Makers')
    visit('/bookmarks')
    expect(page).to have_link('Makers', href: 'www.makersacademy.com')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Makers', href: 'www.makersacademy.com')
  end
end