class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?
  
    @categories = [['Vehicles', 0], ['home Appliances',1], ['Jobs', 2], ['Mobile Phones', 3], ['Electronics', 4], ['Properties', 5], ['Adverts', 6]]

    protected
  
      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :avatar_data, :phone_number, :location])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :avatar_data, :phone_number, :location])
      end
end
