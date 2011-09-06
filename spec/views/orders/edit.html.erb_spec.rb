require 'spec_helper'

describe "orders/edit.html.erb" do
  before(:each) do
    @order = assign(:order, stub_model(Order))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path(@order), :method => "post" do
    end
  end
end
