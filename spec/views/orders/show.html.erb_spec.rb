require 'spec_helper'

describe "orders/show.html.erb" do
  before(:each) do
    @order = assign(:order, stub_model(Order, :uuid => UUIDTools::UUID.random_create.to_s))
  end

  it "renders attributes in <p>" do
    render
  end
end
