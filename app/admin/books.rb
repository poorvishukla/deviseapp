ActiveAdmin.register Book do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :price, :author_id, :genre_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :author_id, :genre_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
  column :name
  column :author
  column :genre
  column :price do |product|
      number_to_currency product.price
    end
  
end


filter :name
filter :author
filter :genre
filter :price

filter :genre, :as => :check_boxes

end
