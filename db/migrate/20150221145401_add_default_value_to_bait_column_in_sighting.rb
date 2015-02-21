class AddDefaultValueToBaitColumnInSighting < ActiveRecord::Migration
  def change
    change_column :sightings, :bait, :boolean, :default => true
  end
end
