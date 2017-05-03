# frozen_string_literal: true

require 'rails_helper'

RSpec.shared_examples 'invalid credentials' do
  scenario 'sees error message' do
    expect(page).to have_text 'Invalid Email or password.'
  end

  scenario 'sees empty password field' do
    expect(find_field('Password').value).to eq('')
  end

  scenario 'sees email field with previously provided email' do
    expect(find_field('Email').value).to eq(email)
  end
end
