class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  def create
  	@user = User.new(user_params)
  	if @user.save
      flash[:success] = "Welcome to automated annual leave system"
  		redirect_to  @user
  	else
  		render 'new'
  		
  	end
end
  def index
  end
  def show
  	@user = User.find(params[:id])
  end

  private
  def user_params
  	params.require(:user).permit(:name, :email, :phone, :password)
  end
  	
end
