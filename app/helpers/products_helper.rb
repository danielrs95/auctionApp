module ProductsHelper
  def form_title
    @product.new_record? ? "Add new product" : "Modify product"
  end

end