class ProfilesController < ApplicationController
    def index
        @users = User.all
    end
    
    def show
        @user = User.first    
    end

    def profile
        @user = current_user
    end
    
end
