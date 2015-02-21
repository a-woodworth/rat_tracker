class Sighting < ActiveRecord::Base

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address

  validates :location, :presence => true

  validates :mobile, :format => { with: /\d{3}-\d{3}-\d{4}/, message: "Enter mobile as 999-999-9999"}
end
