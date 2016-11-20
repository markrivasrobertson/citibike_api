# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

CSV.foreach("../lib/assets/ride_data.csv", headers: true) do |row|
  Day.create(date: row["date"], daily_rides: row["daily_rides"], total_rides: row["total_rides"])
end
  
