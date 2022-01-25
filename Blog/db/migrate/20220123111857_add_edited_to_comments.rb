class AddEditedToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :edited, :boolean, default: false
  end
end
