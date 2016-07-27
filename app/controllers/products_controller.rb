class ProductsController < ApplicationController

  def index
    @products = ["kudoz", "uSlide", "Roadstr", "Hubum"]
  end
end
