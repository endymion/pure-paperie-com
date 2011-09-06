require 'spec_helper'

describe "orders/new.html.erb" do
  before(:each) do
    assign(:order, stub_model(Order).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path, :method => "post" do
    end
  end
end
