feature 'viewing bookmarks' do
  scenario 'it displays booksmarks' do
    visit('/bookmarks')
    expect(page).to have_content('webpage')
  end
end
