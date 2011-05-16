class ApplicationController < ActionController::Base
  protect_from_forgery

	def current_organization
		session[:current_organization] || Organization.find(1)
	end

	def current_tournament
		session[:current_tournament] || Tournament.find_by_organization(current_orgranization)
	end

end
