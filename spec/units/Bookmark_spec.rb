require './app/models/Bookmark'
describe Bookmark do
  it 'displays array of bookmark instances' do
    bookmarkone = Bookmark.new
    bookmarktwo = Bookmark.new
    expect(Bookmark.all).to include(bookmarkone, bookmarktwo)
  end

  context "Linking to the Database" do
    it "successfully links to the bookmark_manager db" do
      message = "database successfully loaded!\n"
      expect{ Bookmark.new('bookmark_manager', 'ben') }.to output(message).to_stdout
    end

    it "displays error message if failed connection" do
      message = "error loading database!\n"
      expect{ Bookmark.new('wrong_database', 'ben') }.to output(message).to_stdout
    end
  end
end
