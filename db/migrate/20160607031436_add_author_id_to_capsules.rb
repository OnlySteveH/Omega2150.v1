class AddAuthorIdToCapsules < ActiveRecord::Migration
  def change
    add_column :capsules, :author_id, :integer
    add_index :capsules, :author_id
  end
end
