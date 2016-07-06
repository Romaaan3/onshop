class Cp::UsersController < Cp::AdminsController
  def index
    @users = User.order(:isAdmin)
    @title = "Users"
  end

  def change_admin_status
    @user = User.find(params[:id])
    if @user.isAdmin == true
      @user.isAdmin = false
    else
      @user.isAdmin = true
    end
    respond_to do |format|
      if @user.save!
        format.html { redirect_to cp_users_url }
      end
    end
  end
end
