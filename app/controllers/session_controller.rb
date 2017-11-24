class SessionController < ApplicationController

    def create
    end

    def update
        binding.pry
        if @user = User.find_by(username: params[:username]) && User.authenticate(@user.email, params[:password])
            session.clear
            session[:user_id] = @user.id
        else
            flash[:notice] = 'Invalid Login'
            redirect_to root_path
        end
    end

end
