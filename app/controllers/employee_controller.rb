class EmployeeController < ApplicationController
  def index
    # binding.pry
      @emp=Employee.all
      # @emp=Employee.where('name != ?','')
  end
  def create
    # @emp=Employee.create(emp_parm)
    @emp=Employee.new(emp_parm)
    if @emp.save
      flash[:emp]="user created data"
      redirect_to root_path
    else
      render 'new'
    end

   
    # render 'create'
  end
  def edit
    @emp=Employee.find(params[:id])
  end
  def new
    # binding.pry
    @emp=Employee.new
    # if @emp.save
    #   redirect_to 'show'
    # else
    #   render 'new'
    # end

  end
  def show
    # @emp=Employee.find(params[:id])
  end
  def update
  
    @emp=Employee.find(params[:id])
    if @emp.update(emp_parm)
      flash[:emp]="user Updated data"
      redirect_to '/employee'
    else
      render 'edit'
    end
  end


  def destroy
    # binding.pry
    @emp=Employee.find(params[:id]).destroy
    flash[:success] = "Employee deleted"
    redirect_to '/'
  end
  private
    def emp_parm
      # binding.pry
      params.require(:employee).permit(:name, :email , :phone, :address, :city, :country)

    end
end
