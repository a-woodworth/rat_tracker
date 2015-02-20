class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.string :location
      t.boolean :search
      t.boolean :bait
      t.text :description
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.boolean :public

      t.timestamps null: false
    end
  end
end
