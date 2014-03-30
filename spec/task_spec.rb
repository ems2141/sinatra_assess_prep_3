require 'capybara/rspec'
require 'rspec/core'
require_relative '../app'

Capybara.app = App

feature "User can create a task and add it to the homepage" do
  scenario "User can create a new task" do
    visit '/'
    expect(page).to have_content "Welcome"

    click_on "Add a Task"
    fill_in 'new_task', with: "laundry"
    click_on "Create Task"

    expect(page).to have_content "laundry"
  end
end

