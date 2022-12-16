ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  actions :index, :edit, :update, :create, :destroy
  permit_params :product_name, :product_code, :product_image, :price, :quantity
  #
  # or
  #
  # permit_params do
  #   permitted = [:product_name, :product_code, :product_image, :price, :quantity]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end


  # filter :product_name, :as => :check_boxes
    filter :product_name

  action_item :Addproducts do
    link_to "Approve", "/admin/products/"
  end

end
