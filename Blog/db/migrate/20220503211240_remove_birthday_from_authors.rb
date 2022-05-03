class RemoveBirthdayFromAuthors < ActiveRecord::Migration[6.1]
  def change
    remove_column :authors, :birthday
  end
end
