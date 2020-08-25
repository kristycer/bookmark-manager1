require './lib/bookmarks.rb'

describe '.all' do
  it 'displays a list of urls' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.facebook.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.instagram.com');")

    bookmark = Bookmark.all

    expect(bookmark).to include('http://www.facebook.com')
    expect(bookmark).to include('http://www.google.com')
    expect(bookmark).to include('http://www.instagram.com')

  end
end