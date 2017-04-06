# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { is_expected.to allow_value('test@testy.com').for(:email) }
    it { is_expected.not_to allow_value('test').for(:email) }
  end
end
