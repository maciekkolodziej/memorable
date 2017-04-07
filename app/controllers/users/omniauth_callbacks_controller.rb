# frozen_string_literal: true

module Users
  class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def google_oauth2
      @user = UserServices::GetFromOmniAuth.call(auth: request.env['omniauth.auth'])

      sign_in_user && return if @user.persisted?
      redirect_to_sign_up
    end

    private

    def sign_in_user
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      sign_in_and_redirect @user, event: :authentication
    end

    def redirect_to_sign_up
      session['devise.google_data'] = request.env['omniauth.auth'].to_h.except('extra')
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join('\n')
    end
  end
end
