# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


repartidor = User.create!(email: "repartidor@cornershop.cl", password: "123456", password_confirmation: "123456", role: "worker")
cliente = User.create!(email: "cliente@cornershop.cl", password: "123456", password_confirmation: "123456")


5.times do
    nueva_orden = Order.new(
        store_name: Faker::Company.name, 
        dispatch_date: rand(1.months).seconds.ago,
        dispatch_price: (10 + rand() * 50).to_i
    )

    3.times do
        nuevo_item = Item.create!(
            name: [Faker::Food.fruits, Faker::Food.vegetables, Faker::Food.ingredient].sample,
            stock: (rand() * 10).to_i,
            price:  (10 + rand() * 50).to_i,
            available: [true, false].sample
        )
        nueva_orden.items << nuevo_item
    end

    cliente.orders << nueva_orden
    repartidor.orders << nueva_orden
end