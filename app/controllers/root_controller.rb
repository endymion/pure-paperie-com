class RootController < ApplicationController

  def index
    @categories = Category.all
  end

end
