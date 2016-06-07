class CreateCapsules < ActiveRecord::Migration
  def change
    create_table :capsules do |t|
      t.string :title
      t.text :about
      t.text :purpose

      t.timestamps null: false
    end
  end
end
