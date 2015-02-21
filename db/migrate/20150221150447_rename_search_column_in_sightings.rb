class RenameSearchColumnInSightings < ActiveRecord::Migration
  def change
    rename_column :sightings, :search, :look_for_rats
  end
end
