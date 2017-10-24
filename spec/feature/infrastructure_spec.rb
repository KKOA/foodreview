require 'rails_helper'

feature 'Test' do
  # include CapybaraHelper
  scenario 'Add Restuarant Link' do
    visit '/restaurants/index'
    click_on 'Add Restaurant'
    expect(page).to have_current_path '/restaurants/new'
  end
  scenario 'Add Restuarant Cancel Link' do
    visit '/restaurants/index'
    click_on 'Add Restaurant'
    click_on 'Back to Restaurants'
    expect(page).to have_current_path '/restaurants'
  end


end
