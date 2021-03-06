# frozen_string_literal: true

# == Schema Information
#
# Table name: brands
#
#  id          :bigint           not null, primary key
#  bytitle     :string
#  description :string
#  img         :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :brand do
    title       { Faker::Lorem.sentence(word_count: 10) }
    bytitle     { Faker::Lorem.sentence(word_count: 10).downcase }
    img         { Faker::Lorem.sentence(word_count: 10).downcase }
    description { Faker::Lorem.sentence(word_count: 10) }
  end
end
