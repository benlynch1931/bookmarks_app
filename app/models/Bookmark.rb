require 'pg'

class Bookmark

  @@bookmark_array = []

  attr_reader :name

  def initialize(db_name, user)
    @@bookmark_array.push(self)

    begin
      @bookmark_db = PG.connect :dbname => db_name, :user => user
      puts "database successfully loaded!"

    rescue PG::Error
      puts "error loading database!"

    #ensure
      #@bookmark_db.close if @bookmark_db
    end
  end

  def all_records
    bookmark_str = ""
    query = @bookmark_db.exec "SELECT * FROM bookmarks"
    query.each do |row|
      bookmark_str << "#{row['id']}, #{row['url']}\n"
    end
    bookmark_str
  end

end
