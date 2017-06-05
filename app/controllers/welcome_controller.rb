class WelcomeController < ApplicationController
  #分类功能还不完善，首页放置前4组商品
  def index
    @products = Product.limit(4)
  end
end
