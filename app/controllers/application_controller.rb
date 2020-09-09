# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def current_cart
    @current_cart ||= begin
                        Cart.find_or_create_by(user: current_user)
                      end
  end

  delegate :cart_items, to: :current_cart

  helper_method :current_cart, :cart_items
end
