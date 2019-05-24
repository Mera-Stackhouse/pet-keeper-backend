
User.destroy_all
Pet.destroy_all
Vet.destroy_all


mera = User.create(username: "Mera", password: "hello", avatar_url: 'https://vignette.wikia.nocookie.net/dccu/images/9/97/Aquaman_Princess_Mera_Character_Textless_Poster.jpg/revision/latest/scale-to-width-down/2000?cb=20181123170545', bio: 'Cat mom in Seattle', neighborhood: "Shoreline")

meatball = Pet.create(name: 'Meatball', species: 'cat', birthdate: Time.new(2012, 12, 30))


PetsUser.create(user: mera , pet: meatball)
