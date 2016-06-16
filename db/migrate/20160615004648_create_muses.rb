class CreateMuses < ActiveRecord::Migration
  def change
    create_table :muses do |t|
      t.string :body
      t.attachment :image

      t.timestamps null: false
    end
  end
end
