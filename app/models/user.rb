# frozen_string_literal: true

class User < ApplicationRecord
  devise :confirmable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable

  devise :omniauthable, omniauth_providers: %i[google_oauth2]
end
