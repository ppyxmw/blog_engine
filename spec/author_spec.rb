require_relative 'helper'

describe Author do
  before do

    blog = Blog.create!(name: 'Meh')
    @author = blog.authors.create!(
      name: 'Michael',
      twitter_handle: '@MichaelWorthin1'
      )
  end


  it 'has a twitter handle' do
    @author.twitter_handle.must_equal('@MichaelWorthin1')
  end

  it 'is valid with valid attributes' do
    @author.valid?.must_equal(true)
  end

  it 'requires a blog' do
    author = Author.new(
      name: 'Ben',
      twitter_handle: '@MichaelWorthin1'
      )
    author.valid?.must_equal(false)
  end
end