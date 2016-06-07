class CreateMindmaps < ActiveRecord::Migration
  def change
    create_table :mindmaps do |t|
      t.string :src
      t.string :src_purpose

      t.timestamps null: false
    end
  end
end
