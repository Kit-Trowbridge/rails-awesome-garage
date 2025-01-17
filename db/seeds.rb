Review.destroy_all
Favorite.destroy_all
Car.destroy_all
Owner.destroy_all

kit = Owner.create!(nickname: 'Kit')
jojo = Owner.create!(nickname: 'Jojo')
luke = Owner.create!(nickname: 'Luke')

Car.create!(brand: 'Audi', model: 'TT', year: 2001, fuel: 'premium', owner: kit, image_url: 'https://images.collectingcars.com/018953/main.jpg?w=1263&fit=fillmax&crop=edges&auto=format,compress&cs=srgb&q=85')
Car.create!(brand: 'Ford', model: 'Mustang', year: 1975, owner: jojo, image_url: 'https://i.redd.it/1l4ufctj50p61.jpg')
Car.create!(brand: 'Mercedes', model: '280SL Pagoda', year: 1968, owner: luke, image_url: 'https://robbreport.com/wp-content/uploads/2021/03/1-1.jpg?w=1000')

# add ! after create in seed file to see errors
