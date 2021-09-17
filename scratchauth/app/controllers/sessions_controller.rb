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
            render json: response
        else
            response = {
                :loggedin => false
            }
            render 'new'
        end
    end
end
