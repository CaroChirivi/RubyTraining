class SessionsController < ApplicationController
    def new
        
    end

    def create
        email = params[:email]
        password = params[:password]
        user = User.find_by(:email => email) 
        if user && user.password_digest == password
            response = {
                :loggedin => true
            }
            session[:user_id] = user.id
            redirect_to landing_path
        else
            response = {
                :loggedin => false
            }
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to landing_path
    end
end
