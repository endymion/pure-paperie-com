require 'spec_helper'

describe "root/index.html.erb" do
  before(:each) do
    assign(:categories, [
      stub_model(Category, :title => 'Classic'),
      stub_model(Category, :title => 'Green'),
      stub_model(Category, :title => 'Vintage'),
    ])
  end

  it "renders a list of categories" do
    render

    assert_select "form", :action => orders_path, :method => "post" do
    end
  end
end
