require 'spec_helper'

describe "orders/index.html.erb" do
  before(:each) do
    assign(:orders, [
      stub_model(Order, :uuid => UUIDTools::UUID.random_create.to_s),
      stub_model(Order, :uuid => UUIDTools::UUID.random_create.to_s)
    ])
  end

  it "renders a list of orders" do
    render
  end
end
