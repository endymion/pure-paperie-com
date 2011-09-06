require 'spec_helper'

describe "orders/show.html.erb" do
  before(:each) do
    @order = assign(:order, stub_model(Order))
  end

  it "renders attributes in <p>" do
    render
  end
end
