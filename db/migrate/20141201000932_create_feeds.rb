class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :name, null: false
      t.string :url, null: false
      t.datetime :last_fetched_at

      t.timestamps
    end

    add_index :feeds, :url, unique: true
  end
end
