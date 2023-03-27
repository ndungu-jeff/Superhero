# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Start seeding"
# heroe

hero1 = Hero.create!(name:'Jeff Ndungu' ,super_name:'Iron Man' )
hero2 = Hero.create!(name:'Lorna Wanjiku' ,super_name:'Wonder Woman' )
hero3 = Hero.create!(name:'Antony Kimani' ,super_name:'Spider Man' )
hero4 = Hero.create!(name:'Fredrick Mburu' ,super_name:'Wolverine' )

# power
 
power1 = Power.create!(name: 'Powered Armor Suit', description: 'Able to merge his mind, body, and armor in unprecedented ways')
power2 = Power.create!(name: 'Flying Powers', description: 'Strength and speed as well as the ability to fly')
power3 = Power.create!(name: 'Reflexes', description: 'Ability to swing from webs and shoot webs from the hands')
power4 = Power.create!(name: 'Healing power', description: 'Enhanced senses and tracking abilities, and a special healing power that also slows his aging')

# heropower

heropower1 = HeroPower.create!(strength:'Average', hero_id:1, power_id:1 )
heropower2 = HeroPower.create!(strength:'Strong', hero_id:2, power_id:2 )
heropower3 = HeroPower.create!(strength:'Weak', hero_id:3, power_id:3 )
heropower4 = HeroPower.create!(strength:'Strong', hero_id:4, power_id:4 )


puts "Done seeding"