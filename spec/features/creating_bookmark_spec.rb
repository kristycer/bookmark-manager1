feature 'Creating a bookmark' do
    scenario 'allows user to create a new bookmark' do
        visit '/new_bookmark'
        fill_in :url, with: 'http://github.com'
        fill_in :title, with: 'github'
        click_button('Submit')

        expect(page).to have_link('github', href: 'http://github.com')
    end
end 