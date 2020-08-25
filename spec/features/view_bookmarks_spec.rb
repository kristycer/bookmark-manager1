feature 'viewing bookmarks show me all the bookmarks'  do
  scenario 'shows saved bookmarks to user' do
    visit ('/bookmarks')
    expect(page).to have_content 'Your bookmarks:'
  end
  scenario 'viewing bookmarks show me all the bookmarks'  do
    Bookmark.create(url: "https://google.com")
    Bookmark.create(url: "https://instagram.com")
    Bookmark.create(url: "https://facebook.com")
  
  end
end

