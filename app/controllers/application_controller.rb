class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception

	protected

  	def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :firstname
      devise_parameter_sanitizer.for(:sign_up) << :lastname
      devise_parameter_sanitizer.for(:account_update) << :firstname
      devise_parameter_sanitizer.for(:account_update) << :lastname
    end

    def authenticate_admin
  		if !current_user || !current_user.admin?
  			redirect_to new_user_session_path, :notice => "You are not permitted to perform this operation."
  		end
  	end
end
