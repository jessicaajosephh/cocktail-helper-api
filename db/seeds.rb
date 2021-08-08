# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all 

mimosa = Cocktail.create(name: "Mimosa", image: "https://cdn.loveandlemons.com/wp-content/uploads/2019/12/mimosa-1080x1080.jpg", instructions: "Pour the sparkling wine into the Champagne flutes, filling each glass about half full. Pour the orange juice on top to fill each glass and serve")

prosecco = Ingredient.create(name: "Prosecco - 2.5 oz", cocktail_id: mimosa.id)
orange_juice = Ingredient.create(name: "Orange Juice - 2.5 oz", cocktail_id: mimosa.id)