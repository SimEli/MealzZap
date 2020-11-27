class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
end
  protected

  def configure_permitted_parameters
    p "BIG MESSAGE"
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    # devise_parameter_sanitizer.permit(:sign_in) << :login << :username << :email << :password
    # devise_parameter_sanitizer.permit(:account_update) << :username << :email << :password << :password_confirmation << :current_password
  end

end
