# frozen_string_literal: true

# == Schema Information
#
# Table name: related_products
#
#  product_id :integer
#  related_id :integer
#
class RelatedProduct < ApplicationRecord
  belongs_to :product
  belongs_to :related, class_name: 'Product'
end
