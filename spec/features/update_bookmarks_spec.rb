feature "Updates Bookmark" do
  scenario "Each link has an update button" do
    truncate_test_table
    populate_table
    @bookmarks = Bookmark.all_bookmarks
    visit('/bookmarks')
    click_button("Edit")
    expect(page).to have_button('update', count: @bookmarks.length)
  end

  scenario "Clicking update button creates new page" do
    truncate_test_table
    populate_table
    @bookmarks = Bookmark.all_bookmarks
    visit('/bookmarks')
    click_button("Edit")
    find_by_id('Makers-id').click_button('Update')
    expect(page).to have_content("Update Bookmark")
  end
end
