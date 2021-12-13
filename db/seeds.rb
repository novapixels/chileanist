require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database'
Expression.destroy_all

puts 'parsing CSV seeds'
csv_text = File.read(Rails.root.join('lib', 'seeds', 'expresiones-cl.csv'))
csv = CSV.parse(csv_text, :headers => true)

puts 'Looping through the parsed data'
csv.each do |row|
  Expression.create(
    sentence: "#{row['Sentence']}",
    definition: "#{row['Definition']}"
  )
end
puts 'All expressions created'

puts 'Creating expressions'
Expression.create(
  sentence: 'Como piojo',
  definition: 'Estar borracho'
)
Expression.create(
  sentence: 'Echar la yegua',
  definition: 'Cansarse o que te entra un poco de sueño, sobre todo después de comer'
)
Expression.create(
  sentence: 'Pasarlo chancho',
  definition: 'Pasarlo muy bien'
)
Expression.create(
  sentence: 'Morir pollo',
  definition: 'Callarse'
)
