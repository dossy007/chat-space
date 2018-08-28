class UsersController < ApplicationController

  def edit
  end

  def update(create_params)
  	if current_user.update(create_params)
  		redirect_to root_path
  	else
  		render :edit
  	end
  end

  private

  def create_params
  	params.require(:user).permit(:name,:email)
  end
end
