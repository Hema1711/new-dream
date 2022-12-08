class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

	def user_index
		@data=ProductInformation::UserService.get_user
		# render :json =>  @data
		# redirect_to user_page_path
	end
		
	def new_user
		@user_info = ProductInformation::UserService.new_user
		# redirect_to new_user_path
	end
	
	def edit_user
		# @user_info = ProductInformation::UserService.edit_user(14)
		# byebug
		@user_info = User.find(14)
		# redirect_to edit_user_path
	end

    def update_user
		# @user_info=ProductInformation::UserService.update_user(user_id,parameters)
	end

	def create_user
		@user_info = ProductInformation::UserService.create_user(parameters)
		redirect_to user_index_path
	end

	def delete_user
		@data=ProductInformation::UserService.delete_user(user_id)
	end

	private
	def parameters
		params.require(:user).permit(:first_name, :last_name, :email, :password, :phone_number, :file_extension, :language)
	end
end
