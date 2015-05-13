class Blog < ActiveRecord::Base
  has_many :authors
  has_many :categories
  has_many :posts, through: :categories
  has_many :comments
end
