require 'pg'

feature 'Can view a list of bookmarks' do
  scenario 'user can view a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.google.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.destroyallsoftware.com');")

    visit '/bookmarks'

    expect(page).to have_content 'http://www.makersacademy.com'
  end
end