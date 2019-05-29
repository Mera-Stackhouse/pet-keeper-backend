
User.destroy_all
Pet.destroy_all
# Vet.destroy_all


mera = User.create(username: "Mera", password: "hello", avatar_url: 'https://vignette.wikia.nocookie.net/dccu/images/9/97/Aquaman_Princess_Mera_Character_Textless_Poster.jpg/revision/latest/scale-to-width-down/2000?cb=20181123170545', bio: 'Pet parent in Seattle', neighborhood: "Shoreline")

meatball = Pet.create(name: 'Meatball', species: 'Cat', breed: 'American Shorthair', birthdate: Time.new(2012, 12, 30), img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/14_years_old_american_shorthair.jpg/220px-14_years_old_american_shorthair.jpg')

ben = Pet.create(name: 'Ben', species: 'Dog', breed: 'Miniature Dachshund', birthdate: Time.new(2012, 12, 30), img_url: 'https://cdn.shopify.com/s/files/1/0994/0236/files/miniature-dachshund_large.jpg?v=1505754817')


PetsUser.create(user: mera , pet: meatball)
PetsUser.create(user: mera , pet: ben)
