class Sighting < ActiveRecord::Base
  validates :location, :presence => true
  validates :mobile, :format => { with: /\d{3}-\d{3}-\d{4}/, message: "Enter mobile as 999-999-9999"}
end
