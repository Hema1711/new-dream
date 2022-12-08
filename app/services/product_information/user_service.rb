module ProductInformation
	class UserService

		def self.get_user
			data = User.all
		end

		def self.new_user
			user_info = User.new
			return user_info
		end

		# def self.edit_user(14)
		# 	user_info = User.find(14)
		# end

		def self.update_user(user_id, params)
			data = User.find(user_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_user(parameters)

			user_info = User.new(parameters)
			if (user_info.save)
				return user_info
			else
				return null
			end

		end

		def self.delete_user(user_id)
			data = User.find(user_id)
			data.update(is_active: false)
		end
	end
end