require './app/models/Bookmark'
describe Bookmark do
  it 'displays array of bookmark instances' do
    bookmarkone = Bookmark.new
    bookmarktwo = Bookmark.new
    expect(Bookmark.all).to include(bookmarkone, bookmarktwo)
  end
end
