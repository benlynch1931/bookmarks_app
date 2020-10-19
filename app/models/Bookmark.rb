class Bookmark

  @@bookmark_array = []

  attr_reader :name

  def initialize
    @@bookmark_array.push(self)
  end

  def self.all
    @@bookmark_array
  end

end
