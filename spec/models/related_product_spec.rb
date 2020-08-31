# frozen_string_literal: true

# == Schema Information
#
# Table name: related_products
#
#  product_id :integer
#  related_id :integer
#
require 'rails_helper'

RSpec.describe RelatedProduct, type: :model do
  it { should belong_to(:product) }
  it { should belong_to(:related).class_name('Product') }
end
