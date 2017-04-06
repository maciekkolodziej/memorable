# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe '#root' do
    subject(:get_root) { get :root }

    context 'when user is not authenticated' do
      it 'redirects to sign in page' do
        expect(get_root).to redirect_to(action: :new, controller: 'devise/sessions')
      end
    end

    context 'when user is authenticated' do
      render_views

      let(:user) { create(:user) }

      before do
        request.env['devise.mapping'] = Devise.mappings[:user]
        allow(request.env['warden']).to receive_messages authenticate!: user
        allow(controller).to receive_messages current_user: user
      end

      it 'renders template' do
        get_root
        expect(response.body).to match(/#{user.email}/im)
      end
    end
  end
end
