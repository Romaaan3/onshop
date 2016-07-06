class Cp::AdminsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_if_admin
  layout "cp"

  def check_if_admin
    if user_signed_in? && current_user.isAdmin == true
      cp_root_path
    else
      new_user_session_path
    end
  end
end
