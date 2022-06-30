# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Igeografico.destroy_all
Paisplace.destroy_all
Continente.destroy_all
User.destroy_all if Rails.env.development?

user1 = User.find_or_initialize_by(email: 'caren@gmail.com')
user1.password = 'caren123'
user1.password_confirmation = 'caren123'

# restaurant1 = user1.restaurants.find_or_initialize_by(name: 'Pardos', address: 'Centro')
# restaurant2 = user1.restaurants.find_or_initialize_by(name: 'Tusan', address: 'Miraflores')

user1.save

continente1 = Continente.create({ denominacion: 'America' })
continente2 = Continente.create({ denominacion: 'Europa' })
continente3 = Continente.create({ denominacion: 'Asia' })
continente4 = Continente.create({ denominacion: 'Africa' })
continente5 = Continente.create({ denominacion: 'Oceania' })
continente6 = Continente.create({ denominacion: 'Antartida' })

paisplace1 = Paisplace.create({ denominacion: 'Peru', habitantes: 32975000, superficie: 1285216, user: user1, continente: continente1 })

paisplace2 = Paisplace.create({ denominacion: 'Mexico', habitantes: 127792000, superficie: 1964375, user: user1, continente: continente1 })

paisplace3 = Paisplace.create({ denominacion: 'Brasil', habitantes: 212559409, superficie: 8515770, user: user1, continente: continente1 })

paisplace4 = Paisplace.create({ denominacion: 'Italia', habitantes: 59236213, superficie: 302070, user: user1,continente: continente2 })

paisplace5 = Paisplace.create({ denominacion: 'India', habitantes: 1380004385, superficie: 3287259, user: user1, continente: continente3 })

Igeografico.create({ denominacion:'Machu Picchu', historia:'Esta ubicado en Cuzco', paisplace:paisplace1, user:user1 })

Igeografico.create({ denominacion:'Chichen Itza', historia:'Esta ubicado en Yucatan', paisplace:paisplace2, user:user1})

Igeografico.create({ denominacion:'Cristo Redentor', historia:'Esta ubicado en Rio de Janeiro', paisplace:paisplace3, user:user1 })

Igeografico.create({ denominacion:'Coliseo Romano', historia:'Esta ubicado en Roma', paisplace:paisplace4, user:user1 })

Igeografico.create({ denominacion:'Taj Mahal', historia:'Esta ubicado en Agra', paisplace:paisplace5, user:user1})
