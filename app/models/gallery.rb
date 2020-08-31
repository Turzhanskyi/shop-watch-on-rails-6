# frozen_string_literal: true

# == Schema Information
#
# Table name: galleries
#
#  id         :bigint           not null, primary key
#  img        :string
#  product_id :integer
#
class Gallery < ApplicationRecord
  belongs_to :product
end
