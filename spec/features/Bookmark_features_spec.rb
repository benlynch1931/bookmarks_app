feature "show bookmarks" do
  scenario "user comes from homepage and sees his bookmarks" do
    visit('/')
    click_button('Show Bookmarks')
    expect(page).to have_content "Makers"
    expect(page).to have_content "Destroy All Software"
    expect(page).to have_content "Google"
  end

end
