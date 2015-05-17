require_relative 'helper'

describe Comment do

  before do
    blog = Blog.create!(name: 'MikeBlog')
    author = blog.authors.create!(name: 'Mike Worth')
    category = blog.categories.create!(name: 'Motorsports')
    post = Post.create!(
      title: 'Formula 1',
      content: 'My first post',
      author: author,
      category: category
      )
    @comment = post.comments.create!(name: "boom", content: "yes")
  end

  it 'is valid with valid attributes' do
    @comment.valid?.must_equal(true)
  end

  it 'requires a post' do
    comment = Comment.new(
      name: 'Ben'
      )
    comment.valid?.must_equal(false)
  end
end