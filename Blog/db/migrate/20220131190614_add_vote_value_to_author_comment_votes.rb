class AddVoteValueToAuthorCommentVotes < ActiveRecord::Migration[6.1]
  def change
    add_column :author_comment_votes, :vote_value, :integer, default: 0
  end
end
