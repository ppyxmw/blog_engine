require_relative '../models/blog'
require_relative '../models/author'
require_relative '../models/category'



blog = Blog.create!(name: 'Ben Lovell Blog')

blog.authors.create!(name: 'Ben Lovell', twitter_handle: '@benlovell')

blog.categories.create!(name: 'Motorsports')
blog.categories.create!(name: 'Computers')