# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Equipment.delete_all
puts "création d'équipements"
air = Equipment.create(name: "air-conditioning")
degree = Equipment.create(name: "degree")
dish = Equipment.create(name: "dishwashers")
dryer = Equipment.create(name: "dryer")
freezer = Equipment.create(name: "freezer")
Equipment.create(name: "hair-dryer")
Equipment.create(name: "iron")
Equipment.create(name: "key")
Equipment.create(name: "laundry")
Equipment.create(name: "microwave")
Equipment.create(name: "parking")
Equipment.create(name: "pets")
refrig = Equipment.create(name: "refrigerator")
shower = Equipment.create(name: "shower")
Equipment.create(name: "soundproof")
Equipment.create(name: "swiming-pool")
Equipment.create(name: "terrace")
Equipment.create(name: "user")
wash = Equipment.create(name: "washing-machine")
Equipment.create(name: "weekly-cleaning")
Equipment.create(name: "wifi")
puts "equipements créés"
