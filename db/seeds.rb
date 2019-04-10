



puts 'Cleaning database...'

puts 'Destroying all wine_fruits...'
WineFruit.destroy_all

puts 'Destroying all wines...'
Wine.destroy_all

puts 'Destroying all fruits...'
Fruit.destroy_all

puts 'Destroying all wine types...'
Winetype.destroy_all

puts 'Destroyed the whole database content'

# Seeding all the wine types

wine_types = ["white", "red"]

wine_types.each do |type|
  Winetype.create!(name: type)
end

# Seeding all the fruits

fruits = ["Plum", "Red Berry", "Pineapple", "Peach", "Cherry", "Apple", "Banana", "Apricot", "Pear", "Mango", "Passion Fruit", "Blackberry"]

fruits.each do |fruit|
  Fruit.create(name: fruit)
end


# Seeding all the wines

puts 'Creating Wines...'

# Before: Plam Trees
Wine.create!(name: "Sweet Secret", description: "You don't know until you try",sku:"sweet-secret", price: 10, winetype_id: Winetype.all[0].id)
# Before: Beach views
Wine.create!(name: "Exotic Foreplay", description: "The build up to a good night",sku:"exotic-foreplay", price: 10, winetype_id: Winetype.all[0].id)
# Before: Sunglow in the dark
Wine.create!(name: "Fruity Fetish", description: "Craving for a fruity explosion?",sku:"fruity-fetish", price: 10, winetype_id: Winetype.all[0].id)
# Before: slow motion
Wine.create!(name: "Rich Confession", description: "Explore the world of rich tastes",sku:"rich-confession", price: 10, winetype_id: Winetype.all[1].id)
# Before: Flirt at night
Wine.create!(name: "Flavorful Flirt", description: "Blow your mind with flavor",sku:"flavorful-flirt", price: 10, winetype_id: Winetype.all[1].id)
# Before: Covered eyes
Wine.create!(name: "Heavy Hickey", description: "Find out what real love is",sku:"heavy-hickey", price: 10, winetype_id: Winetype.all[1].id)

puts 'Created 6 wines'


# Seeding all the winefruits

puts 'Creating connections between fruits and wines...'

sweet_secret = Wine.find_by(name:"Sweet Secret")
selected_fruits = Fruit.where({name:["Peach", "Pineapple"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = sweet_secret.id
  winefruit.save!
end


exotic_foreplay = Wine.find_by(name:"Exotic Foreplay")
selected_fruits = Fruit.where({name:["Mango", "Pineapple", "Passion Fruit"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = exotic_foreplay.id
  winefruit.save!
end


fruity_fetish = Wine.find_by(name:"Fruity Fetish")
selected_fruits = Fruit.where({name:["Apple", "Banana", "Apricot", "Pear"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = fruity_fetish.id
  winefruit.save!
end


heavy_hickey = Wine.find_by(name:"Heavy Hickey")
selected_fruits = Fruit.where({name:["Blackberry", "Cherry"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = heavy_hickey.id
  winefruit.save!
end


flavorful_flirt = Wine.find_by(name:"Flavorful Flirt")
selected_fruits = Fruit.where({name:["Plum", "Red Berry"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = flavorful_flirt.id
  winefruit.save!
end


rich_confession = Wine.find_by(name:"Rich Confession")
selected_fruits = Fruit.where({name:["Plum", "Cherry"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = rich_confession.id
  winefruit.save!
end


puts 'Created all the connections'




