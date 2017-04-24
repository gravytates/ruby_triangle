require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:set_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes user entry to determine type of triangle entered') do
    visit('/')
    fill_in('side1', :with => '5')
    fill_in('side2', :with => '5')
    fill_in('side3', :with => '5')

    click_button('Go!')
    expect(page).to have_content('Equilateral!')
  end

  it('processes user entry to determine type of triangle entered') do
    visit('/')
    fill_in('side1', :with => '5')
    fill_in('side2', :with => '7')
    fill_in('side3', :with => '7')

    click_button('Go!')
    expect(page).to have_content('Isoceles!')
  end
end
