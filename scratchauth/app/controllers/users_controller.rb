class UsersController < ApplicationController
    def new
        
    end

    def create
        email = params[:username]
        password = params[:userpassword]
        User.create(
            :email => email,
            :password_digest => password
        )
        @success = true
        @message = 'Your account is created successfully'
        # response = {
        #     :success => true
        # } 
        # render json: response

        render 'new'
    end

    def destroy
        
    end
end
