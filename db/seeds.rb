# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Ingredient.create(name:'milk')
Ingredient.create(name:'sugar')
Ingredient.create(name:'ice')
Ingredient.create(name:'o-juice')
Ingredient.create(name:'cannelle')
Ingredient.create(name:'honey')

Cocktail.create(name: 'Mojito')
Cocktail.create(name: 'Sun of beach')
