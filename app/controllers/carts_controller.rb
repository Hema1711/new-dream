class CartsController < ApplicationController
	skip_before_action :verify_authenticity_token

	def get_cart
		@data=ProductInformation::CartService.get_cart
		render :json =>  @data
	end

	def new_cart
		@data=ProductInformation::CartService.new_cart
	end
	
	def edit_cart
		@data=ProductInformation::CartService.edit_cart(cart_id)
	end

	def update_cart
		@data=ProductInformation::CartService.update_cart(cart_id, cart_params)
	end

	def create_cart
		byebug
		@data = ProductInformation::CartService.create_cart(cart_params)
		head :no_content
	end

	def delete_cart
		@data=ProductInformation::CartService.delete_cart(cart_id)
	end

	private
	def cart_params
		byebug
		params.require(:cart).permit(:product_id, :total_items, :sub_total, :total_unique_items, :available_discounts, :currency, :user_id)
	end
end


