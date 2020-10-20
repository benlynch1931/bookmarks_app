require './app/models/Bookmark'
describe Bookmark do
  USER = "ben"
  DATABASE = "bookmark_manager"
  #it 'displays array of bookmark instances' do
    #bookmarkone = Bookmark.new
    #bookmarktwo = Bookmark.new
    #expect(Bookmark.all).to include(bookmarkone, bookmarktwo)
  #end

  context "Linking to the Database" do
    it "successfully links to the bookmark_manager db" do
      message = "database successfully loaded!\n"
      expect { Bookmark.new(DATABASE, USER) }.to output(message).to_stdout
    end

    it "displays error message if failed connection" do
      message = "error loading database!\n"
      expect { Bookmark.new('wrong_database', USER) }.to output(message).to_stdout
    end
  end

  context "Extracting from the Database #self.all" do
    it 'outputs all data from the database' do
      bookamrks = "1, www.google.co.uk\n2, www.netflix.com\n3, www.youtube.com\n4, www.makers.tech\n"
      newbookmarks = Bookmark.new(DATABASE, USER)
      expect(newbookmarks.all_records).to eq(bookamrks)
    end
  end
end
