# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Coin.create!(metal: "silver", description: "Pre-War Dime Piece.", denomination: "10 cents", mint: "Pennsylvania", Year: "1905", image: https://i.ebayimg.com/images/g/G8oAAOSw5llf6M6~/s-l300.jpg)
Coin.create!(metal: "silver", description: "Quarter with Standing Liberty design.", denomination: "25 cents", mint: "Denver", Year: 1921, image: https://dyn1.heritagestatic.com/lfset=path%5B3%2F6%2F1%2F4%2F3614006%5D%2Csizedata%5B850x600%5D&call=url%5Bfile%3Aproduct.chain%5D)
Coin.create!(metal: "gold", description: "The Indian Head gold pieces or Pratt-Bigelow gold coins", denomination: "2 Dollars and 50 cents", mint: "Denver", Year: "1908", image: https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/NNC-US-1908-G%242%C2%BD-Indian_Head.jpg/475px-NNC-US-1908-G%242%C2%BD-Indian_Head.jpg)

User.create!(username: "pavelnosarev", password: "password", confirmation: "password", admin: true, email "pavelnosarev@example.com")
User.create!(username: "rwilroy", password: "password", confirmation: "password", admin: true, email "rwilroy@example.com")
User.create!(username: "ebarbtrevor", password: "password", confirmation: "password", admin: false, email "pavelnosarev@example.com")