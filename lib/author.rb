require "pry"
class Author

  @@authors = []
  attr_accessor :name, :posts, :post_count

  def initialize(name)
    @name = name
    @posts = []
    @@post_count = 0
    @@authors << self
  end

  def add_post(post)
    posts << post
    post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end

  def self.post_count
    @@authors.each do |author|
      @@post_count += author.posts.count
    end
    @@post_count
  end  
end