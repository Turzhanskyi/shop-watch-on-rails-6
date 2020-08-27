# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  bytitle     :string
#  content     :text
#  description :string
#  hit         :integer          default("not_hit")
#  img         :string           default("no_image.jpg")
#  keywords    :string
#  old_price   :float
#  price       :float
#  status      :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  brand_id    :integer
#  category_id :integer
#
FactoryBot.define do
  factory :product do
    brand_id { rand(1..5) }
    title { Faker::Lorem.word.camelcase }
    bytitle { title.downcase }
    img { 'p1.png' }
    content { Faker::Lorem.sentence(word_count: 10) }
    keywords { title.downcase }
    description { content }
    price { rand(10..500) }
    old_price { rand(10..500) }
    status { 1 }
    hit { 1 }
  end
end
