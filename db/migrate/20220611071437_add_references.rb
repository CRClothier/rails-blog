class AddReferences < ActiveRecord::Migration[7.0]
  def change
    dd_reference :posts, :users, null: false, foreign_key: true
    add_reference :comments, :users, null: false, foreign_key: true
    add_reference :comments, :posts, null: false, foreign_key: true
    add_reference :likes, :users, null: false, foreign_key: true
    add_reference :likes, :posts, null: false, foreign_key: true
  end
end
