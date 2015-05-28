require('capybara/rspec')
require('./app')
Capybara.app == Sinatra::Application
set(:show_exceptions, false)

describe('path for RPS', {:type => :feature}) do
  it('processes the player1 vs player2 entry and gives winner') do
    visit('/results')
    fill_in('player_one', :with => 'rock')
    fill_in('player_two', :with => 'scissors')
    click_button('Send')
    expect(page).to have_content("true")
  end
end
