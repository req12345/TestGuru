class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_sign_up_params, if: :devise_controller?

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name email password password_confirmation])
  end

  def after_sign_in_path_for(resource)
     resource.admin? ? admin_tests_path : root_path
  end
end
