feature 'Creating a bookmark' do
    scenario 'allows user to create a new bookmark' do
        visit '/new_bookmark'
        fill_in :url, with: 'http://github.com'
        click_button('Submit')

        expect(page).to have_content 'http://github.com'
    end
end 