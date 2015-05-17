class Comment < ActiveRecord::Base
  belongs_to :post

  validates :name, presence: true, uniqueness: true
  validates :post, presence: true
end
