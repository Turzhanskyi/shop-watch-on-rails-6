# frozen_string_literal: true

# == Schema Information
#
# Table name: galleries
#
#  id         :bigint           not null, primary key
#  img        :string
#  product_id :integer
#
require 'rails_helper'

RSpec.describe Gallery, type: :model do
  it { should belong_to(:product) }
end
