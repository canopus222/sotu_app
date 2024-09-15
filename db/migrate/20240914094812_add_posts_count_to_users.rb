class AddPostsCountToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :posts_count, :integer, default: 0, null: false
  end
end
