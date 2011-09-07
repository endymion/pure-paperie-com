require 'integration_test_helper'

feature "Orders", %q{ --
  As a visitor
  In order to buy things
  I want to visit the web site
  So
} do

  scenario "when I go to the root index page, I should see the brand 'Pure Paperie'." do
    visit '/'
    page.should have_content "Pure Paperie"
  end

end