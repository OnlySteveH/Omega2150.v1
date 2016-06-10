class CreateCollabs < ActiveRecord::Migration
  def change
    create_table :collabs do |t|

      t.timestamps null: false
    end
  end
end
