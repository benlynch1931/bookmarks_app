feature 'viewing bookmarks' do
  scenario 'it displays booksmarks' do
    visit('/bookmarks')
    expect(page).to have_content('webpage')
  end
end

feature "Extracting from the Database #self.all" do
  scenario 'outputs all data from the database' do
    visit('/bookmarks')
    expect(page).to have_text("2, http://www.makersacademy.com\n4, http://google.com\n3, http://www.destroyallsoftware.com\n")
  end
end
