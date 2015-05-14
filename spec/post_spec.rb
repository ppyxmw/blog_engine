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