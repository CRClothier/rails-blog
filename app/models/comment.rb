class Comment < ApplicationRecord
  belongs_to :post, :user
end