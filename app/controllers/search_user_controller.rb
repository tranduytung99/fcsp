class SearchUserController < ApplicationController
 
  def index
  	if params[:term].present?
    @users = User.search_user params[:term]
    render json: @users.map{|user| user.email}
    else
     @users = User.all
     render json: @users.map{|user| user.email}
    end
  end

end