# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'User signs in', type: :feature do
  let(:user) { create(:user, password: '123456') }

  before do
    user.confirm
    visit '/'
  end

  def sign_in(credentials)
    fill_form 'Sign in', credentials
  end

  scenario 'sees sign in page' do
    expect(page).to have_text('Sign in')
  end

  scenario 'sees focused email input' do
    expect(page).to have_selector('input[type="email"][name="user[email]"]:focus')
  end

  scenario 'sees password input' do
    expect(page).to have_selector('input[type="password"][name="user[password]"]')
  end

  scenario 'sees remember me checkbox' do
    expect(page).to have_selector('input[type="checkbox"][name="user[remember_me]"]')
  end

  context 'when user provides valid email and password' do
    before { sign_in email: user.email, password: '123456' }
    scenario 'signs in and sees Welcome page' do
      expect(page).to have_text 'Welcome'
    end

    scenario 'sees success message' do
      expect(page).to have_text 'Signed in successfully.'
    end
  end

  context 'when user provides invalid email' do
    let(:email) { 'invalid@email.com' }

    before { sign_in email: email, password: '123456' }
    it_behaves_like 'invalid credentials'
  end

  context 'when user provides invalid password' do
    let(:email) { user.email }

    before { sign_in email: email, password: 'invalid' }
    it_behaves_like 'invalid credentials'
  end

  context 'when user does not provide any data' do
    let(:email) { '' }

    before { sign_in email: email, password: '' }
    it_behaves_like 'invalid credentials'
  end
end
