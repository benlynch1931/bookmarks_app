require 'pg'

class Bookmark


  def self.all_records
    @bookmark_db = PG.connect :dbname => 'bookmark_manager', :user => 'ben'
    query = @bookmark_db.exec "SELECT * FROM bookmarks;"
    query.map do |row|
      row['url']
    end
  end

end
