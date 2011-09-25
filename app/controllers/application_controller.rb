class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate_admin_user!
    authenticate_user!
    redirect_to :root_index unless current_user && current_user.admin?
  end
  
end
