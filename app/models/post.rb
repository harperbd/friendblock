class Post < ApplicationRecord
  belongs_to :user
  has_many :comment_on_posts, dependent: :destroy
  has_many :comments, through: :comment_on_posts
end
