class AddIndexToCapsulesTitle < ActiveRecord::Migration
  def change
    add_index :capsules, :title
  end
end
