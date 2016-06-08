class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_content

      t.timestamps null: false
    end
    add_index :comments, :comment_content
  end
end
