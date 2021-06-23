class ApplicationController < ActionController::Base
  helper_method :current_user,
                :logged_in?

  def after_sign_in_path_for(resource)
     resource.is_a?(Admin) ? admin_tests_path : root_path
  end
end
