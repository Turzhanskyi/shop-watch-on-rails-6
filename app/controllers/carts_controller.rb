# frozen_string_literal: true

class CartsController < ApplicationController
  layout false

  def destroy
    current_cart.destroy
    render :show
  end
end
