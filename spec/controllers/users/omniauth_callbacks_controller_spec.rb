# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Users::OmniauthCallbacksController, type: :controller do
  describe '#google_oauth2' do
    subject(:get_callback) { get :google_oauth2 }

    let(:auth_info) do
      OpenStruct.new(
        info:      OpenStruct.new(email: 'test@test.com'),
        provider:       'test_provider',
        uid:            'test_uid'
      )
    end
    let(:service) { UserServices::GetFromOmniAuth }

    before do
      request.env['devise.mapping'] = Devise.mappings[:user]
      controller.request.env['omniauth.auth'] = auth_info
      allow(service).to receive(:call).and_call_original
    end

    it 'calls GetFromOmniAuth user service' do
      get_callback
      expect(service).to have_received(:call).with(auth: auth_info)
    end

    context 'when user can be created' do
      it 'redirects to root path' do
        get_callback
        expect(response).to redirect_to('/')
      end
    end

    context 'when user with same email already exists' do
      before { create(:user, email: auth_info.info.email) }

      it 'redirects to sign up path' do
        get_callback
        expect(response).to redirect_to('/users/sign_up')
      end
    end
  end
end
