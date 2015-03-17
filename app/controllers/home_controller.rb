class HomeController < ApplicationController
	def index
		render layout: false
	end

	def dashboard
	end

	def sign_in
		login = params[:user][:login]
		password = params[:user][:password]

		user = User.where("name = ? and password = ?", login, password)[0]

		if user.nil?
			redirect_to :controller => "home", :action => "index"	
			flash[:notice] = "Usuário ou senha incorreto"
		else
			session["user_id"] = user.id
			session["name"] = user.name
			redirect_to :controller => "home", :action => "dashboard"
		end
	end

	def sign_out
		session["user_id"] = nil
		session["user_email"] = nil
		redirect_to :controller => "home", :action => "index"
	end
end
