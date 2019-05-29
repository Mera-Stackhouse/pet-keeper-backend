
User.destroy_all
Pet.destroy_all
# Vet.destroy_all


mera = User.create(username: "Mera", password: "hello", avatar_url: 'https://vignette.wikia.nocookie.net/dccu/images/9/97/Aquaman_Princess_Mera_Character_Textless_Poster.jpg/revision/latest/scale-to-width-down/2000?cb=20181123170545', mobile: '206-555-1234', email: "mera@ilovepets.com", neighborhood: "Shoreline")

bob = User.create(username: "Bob", password: "bye", avatar_url: 'https://vignette.wikia.nocookie.net/dccu/images/9/97/Aquaman_Princess_Mera_Character_Textless_Poster.jpg/revision/latest/scale-to-width-down/2000?cb=20181123170545', mobile: '206-555-1234', email: "mera@ilovepets.com", neighborhood: "Shoreline")

meatball = Pet.create(name: 'Meatball', species: 'Cat', breed: 'Domestic Shorthair', birthdate: Time.new(2012, 12, 30), gender: 'female', img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/14_years_old_american_shorthair.jpg/220px-14_years_old_american_shorthair.jpg')

ben = Pet.create(name: 'Ben', species: 'Dog', breed: 'Miniature Dachshund', birthdate: Time.new(2012, 12, 30), gender: 'male', img_url: 'https://cdn.shopify.com/s/files/1/0994/0236/files/miniature-dachshund_large.jpg?v=1505754817')

abbey = Pet.create(name: 'Abbey', species: 'Cat', breed: 'Domestic Shorthair - Calico', birthdate: Time.new(2012, 12, 30), gender: 'female', img_url: 'https://www.barcshelter.org/uploads/5/4/6/5/54653527/unnamed-2_28_orig.jpg')

shadow = Pet.create(name: 'Shadow', species: 'Cat', breed: 'Domestic Shorthair', birthdate: Time.new(2012, 12, 30), gender: 'female', img_url: 'https://media.angieslist.com/s3fs-public/styles/widescreen_large/public/styrofoam-cat-shelter.jpg?itok=BCQlgbUD')


PetsUser.create(user: mera , pet: meatball)
PetsUser.create(user: mera , pet: ben)
PetsUser.create(user: mera , pet: abbey)
PetsUser.create(user: mera , pet: shadow)
