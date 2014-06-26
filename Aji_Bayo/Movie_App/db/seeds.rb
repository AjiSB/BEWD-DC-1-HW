# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = Movie.create([{title: 'Ex-men',description: 'Mutants Galore', year_released: '2014'}, {title: 'Godzilla',description: 'Battle of the radioactive monsters', year_released: '2014'}])
Movie.create({title: 'The Afro',description: 'A movie about the black hair revolution', year_released: '2014'})
Movie.create({title: 'Edge of Tomorrow',description: 'A scifi futuristic action packed movie', year_released: '2014'})