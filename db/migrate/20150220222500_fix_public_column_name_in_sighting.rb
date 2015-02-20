class FixPublicColumnNameInSighting < ActiveRecord::Migration
  def change
    rename_column :sightings, :public, :city_record_ok
  end
end
