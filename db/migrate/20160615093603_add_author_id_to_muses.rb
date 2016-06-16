class AddAuthorIdToMuses < ActiveRecord::Migration
  def change
    add_column :muses, :author_id, :integer
    add_index :muses, :author_id
  end
end
