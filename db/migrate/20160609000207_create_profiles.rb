class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.text :about_me
      t.integer :zipcode
      t.date :date_of_birth
      t.string :nationality
      t.string :sexe
      t.string :state

      t.timestamps null: false
    end
    add_index :profiles, :first_name
    add_index :profiles, :last_name
    add_index :profiles, :zipcode
    add_index :profiles, :state
  end
end
