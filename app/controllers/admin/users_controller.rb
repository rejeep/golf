class Admin::UsersController < Admin::ApplicationController
  require_super_admin
  
  def index
    @users = User.all
  end
  
  def promote
    @user = User.find(params[:id])
    @user.promote!
    
    redirect_to admin_users_path, :notice => 'User promoted'
  end
  
  def degrade
    @user = User.find(params[:id])
    @user.degrade!
    
    redirect_to admin_users_path, :notice => 'User degraded'
  end
end
