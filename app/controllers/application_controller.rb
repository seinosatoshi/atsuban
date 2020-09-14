class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(_resource_or_scope)
    if current_user.nil?
      bands_path
    else
      user_path(current_user.id)
    end
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[name rep_name image introduction link sns area genre youtube_url tips])
    end
end
