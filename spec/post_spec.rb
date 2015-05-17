require_relative 'helper'

describe Post do

  before do
    @blog = Blog.create!(name: 'MikeBlog')
    @author = @blog.authors.create!(name: 'Mike Worth')
    @category = @blog.categories.create!(name: 'Motorsports')
    @post = Post.create!(
      title: 'Formula 1',
      content: 'My first post',
      author: @author,
      category: @category
      )
    @comment = @post.comments.create!(name: "boom", content: "yes")
    @tag = @post.tags.create!(name: 'hotwheels')
  end


  it 'is valid with valid attributes' do
    @post.valid?.must_equal(true)
  end

  # it 'requires a post, blog and category' do
  #   post = Post.new(
  #     title: 'Ben',
  #     content: 'hello hello'
  #     )
  #   post.valid?.must_equal(false)
  # end


  describe 'on creation of a post' do
    it 'sends a tweet to the author' do
      @post.tweeted_author?.must_equal(true)
    end
  end

  it 'defaults "tweeted_author? before creation" to false' do
    Post.new.tweeted_author?.must_equal(false)
  end


  it 'belongs to an author' do
    @author.posts.include?(@post).must_equal(true)
  end

  it 'has many comments' do
    @post.comments.include?(@comment).must_equal(true)
  end

  it 'belongs to a category' do
    @category.posts.include?(@post).must_equal(true)
  end

  it 'belongs to a blog through a category' do
    @category.blog.posts.include?(@post).must_equal(true)
  end


  it 'has many tags through posttags' do
    @post.tags.include?(@tag).must_equal(true)
  end
end