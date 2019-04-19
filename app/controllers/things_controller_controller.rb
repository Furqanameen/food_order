class ThingsControllerController < ApplicationController
	 def show
		 # @users=User.find(params[:id])
		respond_to do |format|
		  format.html
		  format.pdf do

		    render :pdf=> "users",  # Excluding ".pdf" extension.
				template: "admin/order_items/show.html.erb"
		  end
		end
	end
end
