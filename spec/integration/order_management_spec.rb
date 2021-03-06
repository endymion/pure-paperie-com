require 'integration_test_helper'

feature "Order Management", %q{ --
  As a staff member
  In order to process orders  
  I want to manage order information
  So
} do

  before (:each) do
    @user = Factory.create(:user)
    @user.confirm!
    login_as @user, :scope => :user
  end
  
  scenario "when I go to the Orders page, I should see the word 'Orders'." do
    visit '/orders'
    page.should have_content "orders"
  end

end