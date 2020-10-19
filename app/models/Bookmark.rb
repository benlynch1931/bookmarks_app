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

    ensure
      @bookmark_db.close if @bookmark_db
    end
  end

  def self.all
    @@bookmark_array
  end

end
