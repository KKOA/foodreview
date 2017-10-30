feature 'View Restaurants' do
  # include CapybaraHelper
  scenario 'No restaurants exist' do
    visit '/restaurants/index'
    expect(page).to have_content 'No restaurants avaliable'
  end
end
