class RemoveShootingTimeFromPosts < ActiveRecord::Migration[7.1]
  def change
    remove_column :posts, :shooting_time, :datetime
  end
end
