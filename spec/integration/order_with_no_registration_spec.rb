require 'integration_test_helper'

feature "Order with no registration", %q{ --
  As a customer
  In order to process orders  
  I want to place an order
  without registering at the web site
  So
} do

  before (:each) do
    ['Classic', 'Green', 'Vintage'].each do |title|
      Factory.create(:category, :title => title)
    end
  end

  describe "without signing up or signing in" do

    scenario "I should be able to look at invitation designs" do
      visit '/'
      page.should have_select 'order[category]', :options => ['Classic', 'Green', 'Vintage']
    end

    scenario "I should be able to create an Order" do
      visit '/'
    end

  end
end