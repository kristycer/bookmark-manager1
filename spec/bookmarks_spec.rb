require './lib/bookmarks.rb'
require 'database_helpers'

describe '.all' do
  it 'displays a list of urls' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    bookmark = Bookmark.create(url: 'http://www.facebook.com', title: 'facebook')
    Bookmark.create(url: 'http://www.google.com', title: 'google')
    Bookmark.create(url: 'http://www.instagram.com', title: 'instagram')


    bookmarks = Bookmark.all

   expect(bookmarks.length).to eq 3
   expect(bookmarks.first).to be_a Bookmark
   expect(bookmarks.first.id).to eq bookmark.id
   expect(bookmarks.first.title).to eq 'facebook'
   expect(bookmarks.first.url).to eq 'http://www.facebook.com'
  end
end

describe '.create' do
  it 'creates a new bookmark' do
    bookmark = Bookmark.create(url: 'http://www.github.com', title: 'github')
    persisted_data = persisted_data(id: bookmark.id)

    expect(bookmark).to be_a Bookmark
    expect(bookmark.id).to eq persisted_data['id']
    expect(bookmark.title).to eq 'github'
    expect(bookmark.url).to eq 'http://www.github.com'

  end 
end 