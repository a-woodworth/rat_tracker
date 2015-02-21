class AddDefaultValueToLookForRatsColumnInSighting < ActiveRecord::Migration
  def change
    change_column :sightings, :look_for_rats, :boolean, :default => true
  end
end
