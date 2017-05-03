# frozen_string_literal: true

RSpec.configure do |config|
  config.before(:each, type: :feature) do
    Capybara.current_session.driver.browser.manage.window.resize_to(1400, 1400)
  end

  config.after :each, type: :feature do
    Warden.test_reset!
  end
end
