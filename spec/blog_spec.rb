require_relative 'helper'

describe Blog do
  it 'has many posts through categories' do
    blog = Blog.create!(name: 'BenBlog')
    author = blog.authors.create!(name: 'Ben Lovell')
    category = blog.categories.create!(name: 'Motorsports')

    Post.create!(
      title: 'Formula 1',
      content: 'My first post',
      author: author,
      category: category
    )

    blog.posts.empty?.must_equal(false)
  end

  it 'has many authors' do
    blog = Blog.create!(name: 'MikesBlog')
    author = blog.authors.create!(name: 'Mike Worth')

    blog.authors.empty?.must_equal(false)
  end

  it 'has many categories' do

    blog = Blog.create!(name: 'MikesBlog')
    category = blog.categories.create!(name: 'Motorsports')

    blog.categories.empty?.must_equal(false)
  end
end