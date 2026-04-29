require 'rails_helper'

RSpec.feature "Customers", type: :feature, js: true do
  it "Visit index page" do 
    visit(customers_path)
    # print page.html
    # save_and_open_page
    page.save_screenshot('screenshot.png')
    expect(page).to have_current_path(customers_path)
  end
end
