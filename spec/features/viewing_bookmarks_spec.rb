require 'pg'

feature 'Can view a list of bookmarks' do
  scenario 'user can view a list of bookmarks' do
    conn = PG.connect(dbname: 'bookmark_manager_test')

    conn.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    conn.exec("INSERT INTO bookmarks VALUES(2, 'http://www.google.com');")
    conn.exec("INSERT INTO bookmarks VALUES(3, 'http://www.destroyallsoftware.com');")
    conn.exec("INSERT INTO bookmarks VALUES(4, 'https://www.bbc.co.uk/news');")
    conn.exec("INSERT INTO bookmarks VALUES(5, 'https://pomofocus.io/');")
    conn.exec("INSERT INTO bookmarks VALUES(6, 'http://facebook.com');")

    visit '/bookmarks'

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "https://www.bbc.co.uk/news"
    expect(page).to have_content "https://pomofocus.io/"
    expect(page).to have_content "http://facebook.com"
  end
end