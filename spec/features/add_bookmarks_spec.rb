feature "Adds bookmark" do
  scenario "Displays `add bookmark` button" do
    visit('/bookmarks')
    expect(page).to have_selector(:link_or_button, 'Add New')
  end

  scenario "Fill in form and see bookmark appear on /bookmarks" do
    visit('/bookmarks')
    click_button('Add New')
    fill_in(:title,	with: "Facebook") 
    fill_in(:url, with: "http://facebook.com")
    click_button("Create New")
    expect(page).to have_selector(:link_or_button, 'Facebook')
  end
end
