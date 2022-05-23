class MainController < ApplicationController
    def index
        flash.now[:notice] = "Login successful. Welcome to Chikin"
        flash.now[:alert] = "Invalid email or password. You know why I'm not telling you which..."
    end
end
