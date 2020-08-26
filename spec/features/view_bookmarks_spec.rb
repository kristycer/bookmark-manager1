feature 'viewing bookmarks show me all the bookmarks'  do
  scenario 'shows saved bookmarks to user' do
    visit '/bookmarks'
    expect(page).to have_content 'Your bookmarks:'
  end
  scenario 'viewing bookmarks show me all the bookmarks'  do
    Bookmark.create(url: "https://google.com", title: 'google')
    Bookmark.create(url: "https://instagram.com", title: 'instagram')
    Bookmark.create(url: "https://facebook.com", title: 'facebook')

    visit '/bookmarks'

    # expect(page).to have_link('google', href: "https://google.com")
    # expect(page).to have_link('instagram', href: "https://instagram.com")
    # expect(page).to have_link('facebook', href: "https://facebook.com")
  
  end
end

