ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end


end

ActiveAdmin.register User do
  permit_params :email, :password, :publisher_id,
  tags_attributes: [:id, :email, :_destroy]
  # everything happens here :D
end
ActiveAdmin.register Team do
  permit_params :name, :logo,
  tags_attributes: [:name, :logo]

end
ActiveAdmin.register Member do
  permit_params :Email, :location,:first_name,:last_name,
  tags_attributes: [:id,:Email,:location,:first_name,:last_name, :_destroy]
end

