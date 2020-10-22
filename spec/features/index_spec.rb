feature 'homepage' do
  scenario 'user can see a bookmark' do
    visit('/')
    expect(page).to have_content("This is a test bookmark")
  end

  scenario 'user is greeted and is told that this is his bookmarks' do
    visit('/')
    expect(page).to have_content("Welcome to the Bookmark Manager!")
  end
end
