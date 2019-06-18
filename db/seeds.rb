# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "Juan", last_name: "Perez", email: "jperez@email.com")
User.create(first_name: "María", last_name: "Rojas", email: "mrojas@email.com")
User.create(first_name: "Pedro", last_name: "Hernández", email: "phernandez@email.com")

ad1 = Address.create(user_id: 1, phone: "+5697365732", address_line_1: "Camino Calle 123", address_line_2: "Depto A24", city: "Santiago", country: "Chile", zip_code: "99876")
ad2 = Address.create(user_id: 1, phone: "+5692784378", address_line_1: "Calle Camino 987", address_line_2: "Depto C47", city: "Santiago", country: "Chile", zip_code: "94686")
ad3 = Address.create(user_id: 2, phone: "+5692987321", address_line_1: "Avenida Pasaje 567", address_line_2: "Casa 4", city: "Valparaíso", country: "Chile", zip_code: "87546")
ad4 = Address.create(user_id: 3, phone: "+5697548734", address_line_1: "Pasaje Avenida 496", city: "Madrid", country: "España", zip_code: "97864")

Product.create(brand: "Apple", model: "Iphone 9ZX", price: 999999, short_description: "El nuevo modelo de Iphone.", long_description: "El nuevo modelo de Iphone con todas las funcionalidades más modernas.")
Product.create(brand: "Samsung", model: "Galaxy 8000", variant: "Color Azul", price: 300000, short_description: "El nuevo modelo de Samsung Galaxy.", long_description: "El nuevo modelo de Samsung Galaxy en su versión azul.")
Product.create(brand: "Samsung", model: "Galaxy 8000", variant: "Color Rojo", price: 300001, short_description: "El nuevo modelo de Samsung Galaxy.", long_description: "El nuevo modelo de Samsung Galaxy en su versión roja.")

Order.create(user_id: 1, billing_address: ad1, shipping_address: ad2, products: Product.where(id: [1, 2]))
Order.create(user_id: 2, billing_address: ad3, shipping_address: ad3, products: Product.where(id: 3))
Order.create(user_id: 1, billing_address: ad4, shipping_address: ad4, products: Product.where(id: [1, 2, 3]))
