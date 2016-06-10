class RemoveAuthorIdFromMindmaps < ActiveRecord::Migration
  def change
    remove_column :mindmaps, :author_id, :integer
  end
end
