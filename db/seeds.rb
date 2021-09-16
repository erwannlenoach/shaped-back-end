require 'faker'

User.destroy_all
Item.destroy_all
Cart.destroy_all


5.times do
  new_user = User.create!(
    email: Faker::Name.first_name + "@yopmail.com",
    password: "123456",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
  Cart.create!(user_id: new_user.id)
  puts "Create User and Cart"
end



item_1 = Item.create!(title:"fishboard - Al Merricks", price:590, user: User.all.sample)
item_2 = Item.create!(title:"longboard - Torq - perfect for beginners", price: 450, user: User.all.sample)
item_3 = Item.create!(title: "funboard - Quiksilver", price: 800, user: User.all.sample)
item_4 = Item.create!(title: "board gun - hand-shaped", price: 499, user: User.all.sample)


5.times do
    CartsItem.create!(cart: Cart.all.sample, item: Item.all.sample)
    puts "Put Item in Cart"
  end

  