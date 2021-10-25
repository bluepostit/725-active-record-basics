class Post
  attr_reader :id
  attr_accessor :title

  def initialize(attr = {})
    @id = attr[:id]
    @title = attr[:title]
  end

  def save
    DB.execute('INSERT INTO posts (title) VALUES (?)', @title)
  end

  def self.all
    # returns an array of Post instances
  end

  def self.find(id)
    # return a Post instance - the one which has the given id
  end
end
