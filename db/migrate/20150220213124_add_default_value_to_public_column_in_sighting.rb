class AddDefaultValueToPublicColumnInSighting < ActiveRecord::Migration
  def change
    change_column :sightings, :public, :boolean, :default => true
  end
end
