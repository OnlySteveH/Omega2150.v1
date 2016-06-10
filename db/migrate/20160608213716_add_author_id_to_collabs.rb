class AddAuthorIdToCollabs < ActiveRecord::Migration
  def change
    add_column :collabs, :author_id, :integer
    add_index :collabs, :author_id
  end
end
