require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the task list path', {:type => :feature}) do
  it('processes the user entry and returns the to do list') do
    visit('/')
    fill_in('description', :with => 'Buy coffee')
    click_button('Submit')
    expect(page).to have_content('Buy coffee')
  end
end
