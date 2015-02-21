class AddNewColumn311DateToSighting < ActiveRecord::Migration
  def change
    add_column :sightings, :date311, :date
  end
end
