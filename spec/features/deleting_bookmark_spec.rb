feature 'deleting a bookmark' do
    scenario 'allows user to delete a bookmark' do
        Bookmark.create(url: "http://seznam.cz", title: 'seznam')
        visit('/bookmarks')
        expect(page).to have_link('seznam', href: "http://seznam.cz")

        all('.bookmark').last.click_button 'Delete'

        expect(current_path).to eq '/bookmarks'
        expect(page).not_to have_link('seznam', href: "http://seznam.cz")
    end
end
