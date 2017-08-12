class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  redirect_to root_path, alert: "No tienes Acceso" unless current_user.admin?
  	
end
