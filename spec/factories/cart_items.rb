# frozen_string_literal: true

# == Schema Information
#
# Table name: cart_items
#
#  id         :bigint           not null, primary key
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cart_id    :integer
#  product_id :integer
#
FactoryBot.define do
  factory :cart_item do
    association :product, factory: :product
    association :cart, factory: :cart

    quantity { 1 }
  end
end
