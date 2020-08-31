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
class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true

  has_many :related_products, dependent: :destroy
  has_many :related, through: :related_products

  has_many :galleries, dependent: :destroy

  enum hit: { hit: 1, not_hit: 0 }
end
