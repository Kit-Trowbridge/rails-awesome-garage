Car.destroy_all
Owner.destroy_all

kit = Owner.create!(nickname: 'Kit')
jojo = Owner.create!(nickname: 'Jojo')
luke = Owner.create!(nickname: 'Luke')

Car.create!(brand: 'Audi', model: 'TT', year: 2001, fuel: 'premium', owner: kit)
Car.create!(brand: 'Chevy', model: 'Mustang', year: 1980, owner: jojo )
Car.create!(brand: 'Mercedes', model: '280SL Pagoda', year: 1968, owner: luke)

# add ! after create in seed file to see errors
