class Sighting < ActiveRecord::Base
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  validates :mobile,
    :format => { with: /\d{3}-\d{3}-\d{4}/, message: "Enter mobile as 999-999-9999"},
    :allow_nil => true

end
