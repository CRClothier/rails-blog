class Like < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'

  after_save :update_likes_counter

  private

  def update_likes_counter
    post.increment!(:like_counter)
  end
end
