class AddImageToAuthors < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :image, :string
  end
end
