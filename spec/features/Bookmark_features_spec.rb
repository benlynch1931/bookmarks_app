feature 'viewing bookmarks' do
  scenario 'it displays booksmarks' do
    visit('/bookmarks')
    expect(page).to have_content('webpage')
  end
end

feature "Extracting from the Database #self.all" do
  scenario 'outputs all data from the database' do
    bookamrks = "1, www.google.co.uk 2, www.netflix.com 3, www.youtube.com 4, www.makers.tech"
    visit('/bookmarks')
    expect(page).to have_text(bookamrks)
  end
end
