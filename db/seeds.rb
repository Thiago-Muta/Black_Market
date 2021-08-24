# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database..."
Auction.destroy_all
puts "Database cleaned"

# puts "Creating Auction"
# Auction.create( user_id: '1', initial_price: '5', description: 'Um quebra cabeca, faltando 3 peças', item: 'Quebra Cabeça')
# Auction.create( user_id: '1', initial_price: '10', description: 'Usada', item: 'Escova de dentes')
# puts "Auction Created"
