ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :description, :price, :email
  #
  # or
  #
  permit_params do
    permitted = [:name, :description, :price, :email]
    permitted << :other if params[:action] == 'create' && current_admin_user.present?
    permitted
  end

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :price do |product|
      number_to_currency product.price
    end
    column :email
    column " Product Created Date", :created_at
  end
  
end
