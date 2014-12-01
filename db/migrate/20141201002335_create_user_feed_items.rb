class CreateUserFeedItems < ActiveRecord::Migration
  def change
    create_table :user_feed_items do |t|
      t.integer :user_id, null: false
      t.integer :feed_item_id, null: false
      t.datetime :read_at

      t.timestamps
    end

    add_indices_and_foreign_keys
  end

  private

  def add_indices_and_foreign_keys
    add_index :user_feed_items, :user_id
    add_index :user_feed_items, :feed_item_id
    add_index :user_feed_items, [:feed_item_id, :user_id], unique: true
    add_foreign_key :user_feed_items, :users
    add_foreign_key :user_feed_items, :feed_items
  end
end
