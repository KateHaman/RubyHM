class AddDetailsToPosts < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:posts, :responses_count, 0)
  end
end
