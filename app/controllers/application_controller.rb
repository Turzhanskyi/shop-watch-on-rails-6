# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def current_cart
    @current_cart ||= begin
                        Cart.find_or_create_by(user: current_user)
                      end
  end

  delegate :cart_items, to: :current_cart

  def cart_total
    return 0 if cart_items.none?

    cart_items
      .joins(:product)
      .select('(cart_items.quantity * products.price) as total')
      .sum { |x| x[:total] }
  end

  helper_method :current_cart, :cart_items, :cart_total
end
