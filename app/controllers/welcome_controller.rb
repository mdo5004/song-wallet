class WelcomeController < ApplicationController
    skip_before_action :authenticate_request
    def home
        if session[:user_id]
            redirect_to user_path(session[:user_id])
        else
            render html: "Hello world"
#            redirect_to signin_path
        end
    end
end