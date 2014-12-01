class CreateFeedItems < ActiveRecord::Migration
  def change
    create_table :feed_items do |t|
      t.string :title, null: false
      t.string :permalink, null: false
      t.text :body
      t.integer :feed_id, null: false
      t.datetime :published_at

      t.timestamps
    end

    add_index :feed_items, :feed_id
    add_foreign_key :feed_items, :feeds
  end
end
