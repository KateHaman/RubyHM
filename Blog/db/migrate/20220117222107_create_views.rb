class CreateViews < ActiveRecord::Migration[6.1]
  def change
    create_table :views do |t|
      t.belongs_to :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
