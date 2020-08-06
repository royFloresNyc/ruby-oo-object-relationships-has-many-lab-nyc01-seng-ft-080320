require_relative '../lib/post.rb'

class Author

  attr_accessor :name

  def initialize(name)
    @name = name
  end 

  def posts
    Post.all.filter { |post| post.author == self }
  end 

  def add_post(post)
    post.author = self 
  end   

  def add_post_by_title(title_of_post)
    post = Post.new(title_of_post)
    post.author = self
  end 

  def self.post_count
    Post.all.count 
  end 

end 