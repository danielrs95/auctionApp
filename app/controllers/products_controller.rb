class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to products_path, notice: "Product created success"
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path, notice: "Updated success"
    else
      render :edit
    end
  end

  def delete
    # Sin @ porque no usaremos la variable en la vista
    product = Product.find(params[:id])
    product.destroy

    redirect_to products_path, notice: "Product deleted"
  end


  private
    def product_params
      params.require(:product).permit(:name, :description, :image, :price, :auctionDate, :startingDate, :endingDate)
    end
end