



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
Wine.create!(name: "Sweet Secret", description: "Every sip",sku:"sweet-secret", price: 10, winetype_id: Winetype.all[0].id)
# Before: Beach views
Wine.create!(name: "Exotic Foreplay", description: "Every sip",sku:"exotic-foreplay", price: 10, winetype_id: Winetype.all[0].id)
# Before: Sunglow in the dark
Wine.create!(name: "Fruity Fetish", description: "Every sip",sku:"fruity-fetish", price: 10, winetype_id: Winetype.all[0].id)
# Before: slow motion
Wine.create!(name: "Rich Confession", description: "Every sip",sku:"rich-confession", price: 10, winetype_id: Winetype.all[1].id)
# Before: Flirt at night
Wine.create!(name: "Flavorful Flirt", description: "Every sip",sku:"flavorful-flirt", price: 10, winetype_id: Winetype.all[1].id)
# Before: Covered eyes
Wine.create!(name: "Heavy Hickey", description: "Every sip",sku:"heavy-hickey", price: 10, winetype_id: Winetype.all[1].id)

puts 'Created 6 wines'


# Seeding all the winefruits

puts 'Creating connections between fruits and wines...'

palm_trees = Wine.find_by(name:"Sweet Secret")
selected_fruits = Fruit.where({name:["Peach", "Pineapple"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = palm_trees.id
  winefruit.save!
end


beach_views = Wine.find_by(name:"Exotic Foreplay")
selected_fruits = Fruit.where({name:["Mango", "Pineapple", "Passion Fruit"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = beach_views.id
  winefruit.save!
end


sunglow_in_the_dark = Wine.find_by(name:"Fruity Fetish")
selected_fruits = Fruit.where({name:["Apple", "Banana", "Apricot", "Pear"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = sunglow_in_the_dark.id
  winefruit.save!
end


covered_eyes = Wine.find_by(name:"Heavy Hickey")
selected_fruits = Fruit.where({name:["Blackberry", "Cherry"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = covered_eyes.id
  winefruit.save!
end


flirt_at_night = Wine.find_by(name:"Flavorful Flirt")
selected_fruits = Fruit.where({name:["Plum", "Red Berry"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = flirt_at_night.id
  winefruit.save!
end


slow_motion = Wine.find_by(name:"Rich Confession")
selected_fruits = Fruit.where({name:["Plum", "Cherry"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = slow_motion.id
  winefruit.save!
end


puts 'Created all the connections'




