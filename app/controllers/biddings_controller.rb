class BiddingsController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    product.biddings.create(biddings_params)

    redirect_to product
  end

  private
    def biddings_params
      params.require(:bidding).permit(:price).merge(user: current_user)
    end
end
