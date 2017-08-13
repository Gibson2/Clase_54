class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  load_and_authorize_resource

  # def filter_admin!
  # 	authenticate_user!
  # 	redirect_to root_path, alert: "No tienes Acceso" unless current_user.admin?
  # end
  rescue_from CanCan::AccessDenied do |exception|

    redirect_to root_url, alert: "No tienes acceso"

  end

end
