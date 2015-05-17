require_relative 'helper'

describe Category do

  before do
    blog = Blog.create!(name: 'Meh')
    @category = blog.categories.create!(
      name: 'fine foods'
      )
  end

  it 'is valid with valid attributes' do
    @category.valid?.must_equal(true)
  end

  it 'requires a blog' do
    category = Category.new(
      name: 'Ben'
      )
    category.valid?.must_equal(false)
  end
end