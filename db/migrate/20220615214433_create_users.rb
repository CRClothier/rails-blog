class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :names
      t.string :photos
      t.text :bios
      t.integer :posts_counters

      t.timestamps
    end
  end
end
