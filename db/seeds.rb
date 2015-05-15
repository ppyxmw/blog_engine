require_relative '../models/blog'
require_relative '../models/author'
require_relative '../models/category'
require 'faker'



blog = Blog.create!(name: Faker::Name.name)

blog.authors.create!(name: Faker::Name.name, twitter_handle: Faker::Internet.email)

blog.categories.create!(name: Faker::Commerce.department)
blog.categories.create!(name: Faker::Commerce.department)