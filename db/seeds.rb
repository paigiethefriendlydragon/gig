
if Musician.all.length <100
  100.times do |index|
    Musician.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      address: Faker::Address.street_address,
      city: Faker::Address.city,
      state: Faker::Address.state,
      zip: Faker::Address.zip,
      description: Faker::Hipster.paragraph)
  end
end
