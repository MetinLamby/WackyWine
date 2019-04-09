



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

Wine.create!(name: "Palm Trees", description: "Every sip",sku:"palm-trees", price: 10, winetype_id: Winetype.all[0].id)
Wine.create!(name: "Beach Views", description: "Every sip",sku:"beach-views", price: 10, winetype_id: Winetype.all[0].id)
Wine.create!(name: "Sunglow In The Dark", description: "Every sip",sku:"sunglow-in-the-dark", price: 10, winetype_id: Winetype.all[0].id)
Wine.create!(name: "Covered Eyes", description: "Every sip",sku:"covered-eyes", price: 10, winetype_id: Winetype.all[1].id)
Wine.create!(name: "Flirt At Night", description: "Every sip",sku:"flirt-at-night", price: 10, winetype_id: Winetype.all[1].id)
Wine.create!(name: "Slow Motion", description: "Every sip",sku:"slow-motion", price: 10, winetype_id: Winetype.all[1].id)

puts 'Created 6 wines'


# Seeding all the winefruits

puts 'Creating connections between fruits and wines...'

palm_trees = Wine.find_by(name:"Palm Trees")
selected_fruits = Fruit.where({name:["Peach", "Pineapple"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = palm_trees.id
  winefruit.save!
end


beach_views = Wine.find_by(name:"Beach Views")
selected_fruits = Fruit.where({name:["Mango", "Pineapple", "Passion Fruit"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = beach_views.id
  winefruit.save!
end


sunglow_in_the_dark = Wine.find_by(name:"Sunglow In The Dark")
selected_fruits = Fruit.where({name:["Apple", "Banana", "Apricot", "Pear"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = sunglow_in_the_dark.id
  winefruit.save!
end


covered_eyes = Wine.find_by(name:"Covered Eyes")
selected_fruits = Fruit.where({name:["Blackberry", "Cherry"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = covered_eyes.id
  winefruit.save!
end


flirt_at_night = Wine.find_by(name:"Flirt At Night")
selected_fruits = Fruit.where({name:["Plum", "Red Berry"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = flirt_at_night.id
  winefruit.save!
end


slow_motion = Wine.find_by(name:"Slow Motion")
selected_fruits = Fruit.where({name:["Plum", "Cherry"]})
selected_fruits.each do |fruit|
  winefruit = WineFruit.new
  winefruit.fruit_id = fruit.id
  winefruit.wine_id = slow_motion.id
  winefruit.save!
end


puts 'Created all the connections'




