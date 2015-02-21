# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sightings_file = Rails.root.join('lib', 'seeds', '311rats.json').to_s
sighting_hashes = JSON.parse(open(sightings_file).read)

ActiveRecord::Base.transaction do

  Sighting.destroy_all
  sighting_hashes.each do |sighting_hash|
    Sighting.create!(sighting_hash)
  end

  puts "There are now #{Sighting.count} rows in the sightings table"


end
