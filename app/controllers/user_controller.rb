class UserController < ApplicationController
  load_and_authorize_resource


  def destroy
    @user.destroy
    redirect_to pages_dashboard_path
  end

  def change_role
    if @user.admin?
      @user.visit!
    else
      @user.admin!
    end
    redirect_to pages_dashboard_path
  end
end
