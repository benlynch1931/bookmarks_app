feature "Allows user to delete bookmarks" do
  scenario "deletes bookmark chosen by user" do
    visit('/bookmarks')
    click_button("Edit")
    page.check("Twitter")
    click_button("Delete")
    expect(page).not_to have_content("Twitter")
  end
end
