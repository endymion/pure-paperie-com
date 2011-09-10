require 'spec_helper'

describe Category do
  before (:each) do
    @category = Category.new
  end

  specify "must have a title" do
    @category.should_not be_valid
    @category.title = 'Some Title'
    @category.should be_valid
  end
end
