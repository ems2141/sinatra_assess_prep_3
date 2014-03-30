require 'capybara/rspec'
require 'rspec/core'
require_relative '../app'

Capybara.app = App

feature "User can create a task and add it to the homepage" do
  scenario "User can view welcome on the homepage" do
    visit '/'
    expect(page).to have_content "Welcome"
  end
end

