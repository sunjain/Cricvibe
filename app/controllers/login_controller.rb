class LoginController < ApplicationController
	def signin
		if request.post?
			session[:user] = User.authenticate(params[:username],params[:password])
			if session[:user].nil? then
				flash[:message] = "User #{params[:username]} or password not correct"
				redirect_to :signin
			else
        redirect_to root_url 
			end
		end
		#:layout => false
	end

	def signup
    @user = User.new(params[:user])
    if request.post?  
      if @user.save
        session[:user] = User.authenticate(@user.userid, params[:user][:password])
        flash[:message] = "Signup successful"
        redirect_to root_url 
      else
        flash[:warning] = "Signup unsuccessful"
      end
  	end
	end
end
