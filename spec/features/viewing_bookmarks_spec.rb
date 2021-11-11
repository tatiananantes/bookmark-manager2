require 'pg'

feature 'Can view a list of bookmarks' do
  scenario 'user can view a list of bookmarks' do
    
    Bookmark.create(url: "http://www.makersacademy.com")
    Bookmark.create(url: "http://www.destroyallsoftware.com")
    Bookmark.create(url: "http://www.google.com")

    visit '/bookmarks'

    expect(page).to have_content 'http://www.makersacademy.com'
  end
end