# frozen_string_literal: true

module UserOath
  extend ActiveSupport::Concern

  def create_authorization(auth)
    authorizations.create(provider: auth.provider, uid: auth.uid)
  end

  class_methods do
    def find_for_oauth(auth)
      authorization = Authorization.find_by(provider: auth.provider, uid: auth.uid)

      return  authorization.user if authorization

      email = auth.info[:email]
      user  = User.find_by(email: email)

      email ||= create_email(auth) if email.nil?

      if user
        user.create_authorization(auth)
      else
        password = Devise.friendly_token[0, 20]
        user     = User.create!(email:                 email,
                                password:              password,
                                password_confirmation: password)

        user.create_authorization(auth)
      end
      user
    end

    def create_email(auth)
      "#{auth[:uid]}@rails_watch.com"
    end
  end
end
