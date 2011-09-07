require 'integration_test_helper'

feature "Orders", %q{ --
  As a staff member
  In order to process orders  
  I want to sign in
  So
} do

  scenario "when I go to the Orders page, I should see a login form." do
    visit '/orders'
    page.should have_content "sign in or sign up"
  end

end