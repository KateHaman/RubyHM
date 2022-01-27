class DropViewsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :views
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
