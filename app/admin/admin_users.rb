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
  index download_links: [:pdf]
 index download_links: proc{ current_user.can_view_download_links? }
  controller do
   # if you want /admin/pages/12345.pdf
    def show
      super do |format|
         format.pdf { render(pdf: "page.pdf") }
       end
     end
   end

 # if you want /admin/pages/12345/pdf, pdf_admin_page_path(@page)
 member_action :pdf, method: :get do
   render(pdf: "page.pdf")
 end

end
ActiveAdmin.register Team do
  permit_params :name, :logo,
  tags_attributes: [:name, :logo]
  # index download_links: false
 index download_links: [:pdf]
 index download_links: proc{ current_user.can_view_download_links? }

end
ActiveAdmin.register Member do
  permit_params :Email, :location,:first_name,:last_name,
  tags_attributes: [:id,:Email,:location,:first_name,:last_name, :_destroy]
end

ActiveAdmin.register Stor do
  permit_params :name,:email, :address,:phone,:city,
  tags_attributes: [:name,:email,:_destroy]
end

