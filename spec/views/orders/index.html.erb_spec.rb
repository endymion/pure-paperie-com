require 'spec_helper'

describe "orders/index.html.erb" do
  before(:each) do
    assign(:orders, [
      stub_model(Order),
      stub_model(Order)
    ])
  end

  it "renders a list of orders" do
    render
  end
end
