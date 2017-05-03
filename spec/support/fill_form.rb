# frozen_string_literal: true

def fill_form(button = 'Save', fields = {})
  fields.each do |field_name, field_value|
    fill_in field_name.to_s.capitalize, with: field_value
  end
  click_button button
end
