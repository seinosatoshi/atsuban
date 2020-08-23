class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resource_or_scope)
	  if current_user.nil?
	    bands_path
	  else
	    users_path
	  end
	end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :rep_name, :rep_name_kana])
  end
end
