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
class CartItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  validates :cart_id, :quantity, presence: true
end
