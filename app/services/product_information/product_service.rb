module ProductInformation
	class ProductService

		def self.get_products
			data = Product.where(is_active:true)
		end

		def self.new_product
			data = Product.new 
		end

		def self.edit_product(product_id)
			data = Product.find(product_id)
		end

		def self.update_product(product_id, params)
			data = Product.find(product_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_product(params)
			byebug
			data = Product.create(params)
		end

		def self.delete_product(product_id)
			data = Product.find(product_id)
			data.update(is_active: false)
		end
	end
end