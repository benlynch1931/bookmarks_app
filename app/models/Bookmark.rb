require 'pg'

class Bookmark
  attr_reader :id, :title, :url

  def initialize(id:, title:, url:)
    @id = id
    @title = title
    @url = url
  end

  def self.all_bookmarks
    connect_to_db

    result = @@con.exec("SELECT * FROM bookmarks;")
    # result.map { |bookmark| { title: bookmark['title'], url: bookmark['url'] } }
    result.map do |bookmark|
      Bookmark.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url'])
    end
  end

  def self.create(title, url)
    connect_to_db

    @@con.exec("INSERT INTO bookmarks(title, url) VALUES('#{title}','#{url}');")
  end

  def self.delete(titles)
    connect_to_db
    titles.each do |title|
      @@con.exec("DELETE FROM bookmarks WHERE title='#{title}';")
    end

  end

  private
  def self.connect_to_db
    if ENV['RACK_ENV'] == 'test'
      @@con = PG.connect(dbname: 'bookmark_manager_test', user: 'ben')
    else
      @@con = PG.connect(dbname: 'bookmark_manager', user: 'ben')
    end
  end

end
