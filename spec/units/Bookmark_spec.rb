require "./app/models/Bookmark.rb"
describe Bookmark do
  USER = "dan"
  DATABASE = "bookmark_manager"

  describe " #all_bookmarks" do
    let(:bookmark_arr) {
      [["Makers", "http://www.makersacademy.com"],
       ["Destroy All Software", "http://www.destroyallsoftware.com"],
       ["Twitter", "http://www.twitter.com"]]
    }

    it "outputs all data from the database" do
      bookmarks = Bookmark.all_bookmarks

      3.times { |each|
        expect(bookmarks[each]).to have_attributes(title: bookmark_arr[each][0], url: bookmark_arr[each][1])
      }
    end
  end

  context " #create" do
    it "adds new bookmark" do
      Bookmark.create("Facebook", "http://facebook.com")
      bookmarks = Bookmark.all_bookmarks
      expect(bookmarks.last).to have_attributes({ title: "Facebook", url: "http://facebook.com" })
    end
  end

  context "# get" do
    it "gets an individual bookmark based on an id" do
      expect(Bookmark.get(1).title).to eq "Makers"
    end
  end
end
