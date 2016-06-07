class AddAuthorIdToMindmap < ActiveRecord::Migration
  def change
    add_column :mindmaps, :author_id, :integer
    add_index :mindmaps, :author_id
  end
end
