require './app/models/Bookmark'
describe Bookmark do
  #it 'displays array of bookmark instances' do
    #bookmarkone = Bookmark.new
    #bookmarktwo = Bookmark.new
    #expect(Bookmark.all).to include(bookmarkone, bookmarktwo)
  #end

  context "Linking to the Database" do
    it "successfully links to the bookmark_manager db" do
      message = "database successfully loaded!\n"
      expect{ Bookmark.new('bookmark_manager', 'dmillen') }.to output(message).to_stdout
    end

    it "displays error message if failed connection" do
      message = "error loading database!\n"
      expect{ Bookmark.new('wrong_database', 'ben') }.to output(message).to_stdout
    end
  end

  context "Extracting from the Database #self.all" do
    it 'outputs all data from the database' do
      newbookmarks = Bookmark.new('bookmark_manager', 'dmillen')
      expect{ newbookmarks.all_records}.to output("2, http://www.makersacademy.com\n4, http://google.com\n3, http://www.destroyallsoftware.com\n").to_stdout
    end
  end
end
