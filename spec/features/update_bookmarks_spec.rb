feature "Updates Bookmark" do
  scenario "Each link has an update button" do
    truncate_test_table
    populate_table
    @bookmarks = Bookmark.all_bookmarks
    visit("/bookmarks")
    click_button("Edit")
    expect(page).to have_link("Update", count: @bookmarks.length)
  end

  scenario "Clicking update button creates new page with a form" do
    truncate_test_table
    populate_table
    @bookmarks = Bookmark.all_bookmarks
    visit("/bookmarks")
    click_button("Edit")
    find_by_id("Makers-id").click_link("Update")
    expect(page).to have_content("Update Bookmark")
    expect(page).to have_field("title")
    expect(page).to have_field("url")
  end

  scenario "Update a bookmark and see the edited bookmark in our list" do
    truncate_test_table
    populate_table
    visit("/bookmarks")
    click_button("Edit")
    find_by_id("Makers-id").click_link("Update")
    fill_in "title", with: "Makers Blog"
    fill_in "url", with: "https://blog.makersacademy.com/"
    expect(page).to have_link("Makers Blog", href: "https://blog.makersacademy.com/")
  end
end
