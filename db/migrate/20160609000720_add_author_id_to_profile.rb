class AddAuthorIdToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :author_id, :integer
    add_index :profiles, :author_id
  end
end
