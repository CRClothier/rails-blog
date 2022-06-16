class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post

  def increment_post_comments_counter
    post.increment!(:comment_counter)
  end
end
