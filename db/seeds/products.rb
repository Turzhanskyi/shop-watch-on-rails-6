# frozen_string_literal: true

require 'faker'

brand_attributes = [
  {
    title: 'Citizen', bytitle: 'citizen',
      img: 'abt-2.jpg', description: Faker::Superhero.name
  },
  {
    title: 'Casio', bytitle: 'casio', img: 'abt-1.jpg',
      description: Faker::Superhero.name
  },
  {
    title: 'Royal London', bytitle: 'royal-london',
      img: 'abt-3.jpg', description: Faker::Superhero.name
  },
  {
    title: 'Seiko', bytitle: 'seiko', img: 'seiko.png',
      description: Faker::Superhero.name
  },
  {
    title: 'Diesel', bytitle: 'diesel', img: 'diesel.png',
      description: Faker::Superhero.name
  }
]

brand_attributes.each do |attr|
  Brand.create(attr) unless Brand.where(attr).first
end
