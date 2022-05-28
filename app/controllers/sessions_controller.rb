class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Login successful. Welcome to Chikin"
        else
            flash.now[:alert] = "Invalid email or password. You know why I'm not telling you which..."
            render :new
        end
    end
    
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out"
    end
end