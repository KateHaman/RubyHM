class CreateAuthorCommentVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :author_comment_votes do |t|
      t.references :comment, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
