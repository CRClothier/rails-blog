class Post < ApplicationRecord
  has_many :comments
  has_many :likes
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'

  def increment_user_post_counter
    user.increment!(:post_counter)
  end

  def self.three_most_recent_comments
    Comment.where(post: self).order(created_at: :desc).limit(5)
  end
end