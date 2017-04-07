# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserServices::GetFromOmniAuth do
  subject(:call_service) { described_class.call(auth: auth) }

  describe '#call' do
    let(:auth) do
      OpenStruct.new(
        info:      OpenStruct.new(email: 'test@test.com'),
        provider:       'test_provider',
        uid:            'test_uid'
      )
    end

    context 'when user can be created' do
      it 'sets provider' do
        expect(call_service.provider). to eq(auth.provider)
      end

      it 'sets uid' do
        expect(call_service.uid). to eq(auth.uid)
      end

      it 'sets email' do
        expect(call_service.email). to eq(auth.info.email)
      end

      it 'saves user' do
        expect(call_service.persisted?).to be_truthy
      end
    end

    context 'when user with same email already exists' do
      before { create(:user, email: auth.info.email) }

      it 'does not save user' do
        expect(call_service.persisted?).to be_falsey
      end
    end
  end
end
