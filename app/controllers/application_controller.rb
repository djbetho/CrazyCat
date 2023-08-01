class ApplicationController < ActionController::Base
    
    before_action :configure_permitted_parameters, if: :devise_controller?


    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :nickname, :avatar])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :nickname, :avatar ])
    end

    def authorize_request(kind = nil)
        unless kind.include?(current_user.role)
            redirect_to posts_path, notice: "Tu no estas autorizado para realizar esta accion."

        end
    end
end
