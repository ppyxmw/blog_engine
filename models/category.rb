class Category < ActiveRecord::Base
  belongs_to :blog
  has_many :posts


  validates :name, presence: true, uniqueness: true
  validates :blog, presence: true
end
