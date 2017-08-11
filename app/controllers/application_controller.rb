class ApplicationController < ActionController::Base
    include Pundit
#    before_action :authenticate_request
    attr_reader :current_user
#    protect_from_forgery with: :exception

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    
    
    
    
    def logged_in?
        !!session[:user_id] 
    end
    def require_login
        redirect_to new_session_path unless logged_in?
    end 
    def user_not_authorized
        flash[:warning] = "Access denied." 
        redirect_to(request.referrer || root_path)
    end
    
    private 
    
    def authenticate_request
        @current_user = AuthorizeApiRequest.call(request.headers).result
        render json: {error: 'Not Authorized'}, status: 401 unless @current_user
    end
end
