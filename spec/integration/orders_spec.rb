require 'integration_test_helper'

feature "Orders", %q{ --
  As a staff member
  In order to process orders  
  I want manage order information
  So
} do

  scenario "when I go to the Orders page, I should see the word 'Orders'." do
    visit '/orders'
    page.should have_content "Orders"
  end

end