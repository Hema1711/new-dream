class ProductsController < ApplicationController
    skip_before_action :verify_authenticity_token
	def index
		@data=ProductInformation::ProductService.get_products
	end

	def new_product
		@data=ProductInformation::ProductService.new_product
	end
	
	def edit_product
		@data=ProductInformation::ProductService.edit_product(product_id)
	end

	def update_product
		@data=ProductInformation::ProductService.update_product(product_id,params)
	end

	def create_product
		byebug
		@data = Service::ProductInformation::ProductService.create_product(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_product
		@data=ProductInformation::ProductService.delete_product(product_id)
	end

	private
	
	def params
		params.permit(:product_name, :product_code, :category_id, :product_stock_id, :product_image, :price, :quantity)
	end
end
