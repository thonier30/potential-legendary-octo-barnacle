class StoreController < ApplicationController
  skip_before_action :authorize
  def index
    @products = Product.order(:title)
  end
  def is_admin
   return true if self.account_type == 1 #The admin account type
  end
end
