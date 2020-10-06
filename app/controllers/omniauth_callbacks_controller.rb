# frozen_string_literal: true

class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.find_for_oauth(request.env['omniauth.auth'])
    return unless @user.persisted?

    sign_in_and_redirect @user, event: :authentication
    set_flash_message(:notice, :success, kind: 'facebook') if is_navigational_format?
  end
end
