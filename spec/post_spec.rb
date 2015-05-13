require_relative 'helper'

describe Post do
  it 'belongs to an author' do
    blog = Blog.create!(name: 'MikeBlog')
    author = blog.authors.create!(name: 'Mike Worth')
    category = blog.categories.create!(name: 'Motorsports')

    post = Post.create!(
      title: 'Formula 1',
      content: 'My first post',
      author: author,
      category: category
    )
    author.posts.include?(post).must_equal(true)


  end



  it 'has many comments' do

    blog = Blog.create!(name: 'MikeBlog')
    author = blog.authors.create!(name: 'Mike Worth')
    category = blog.categories.create!(name: 'Motorsports')

    post = Post.create!(
      title: 'Formula 1',
      content: 'My first post',
      author: author,
      category: category
    )

    comment = post.comments.create!(name: "boom", content: "yes")

    post.comments.include?(comment).must_equal(true)

  end


  it 'belongs to a category' do
    blog = Blog.create!(name: 'MikeBlog')
    author = blog.authors.create!(name: 'Mike Worth')
    category = blog.categories.create!(name: 'Motorsports')

    post = Post.create!(
      title: 'Formula 1',
      content: 'My first post',
      author: author,
      category: category
    )

    category.posts.include?(post).must_equal(true)



  end


  it 'belongs to a blog through a category' do

    blog = Blog.create!(name: 'MikeBlog')
    author = blog.authors.create!(name: 'Mike Worth')
    category = blog.categories.create!(name: 'Motorsports')

    Post.create!(
      title: 'Formula 1',
      content: 'My first post',
      author: author,
      category: category
    )

    category.blog.posts.empty?.must_equal(false)

  end


  it 'has many tags through posttags' do

    blog = Blog.create!(name: 'MikeBlog')
    author = blog.authors.create!(name: 'Mike Worth')
    category = blog.categories.create!(name: 'Motorsports')

    post = Post.create!(
      title: 'Formula 1',
      content: 'My first post',
      author: author,
      category: category
    )

    tag = post.tags.create!(name: 'hotwheels')

    post.tags.include?(tag).must_equal(true)


  end

end