# frozen_string_literal: true

module UserServices
  class GetFromOmniAuth < ApplicationService
    def initialize(auth:)
      @auth = auth
    end

    def call
      User.find_or_create_by(provider: auth.provider, uid: auth.uid) do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0, 20]
        user.skip_confirmation!
      end
    end

    private

    attr_reader :auth
  end
end
