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
    query = @bookmark_db.exec "SELECT * FROM bookmarks"
    newlist = query.map do |row|
      "#{row['id']}, #{row['url']}"
    end
    newlist.each do |each|
      each
    end
   newlist[0]


  end
end
