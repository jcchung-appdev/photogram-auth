class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end
  
  def show
     @user = User.find(params.fetch("user_id"))
     
     render("users/show.html.erb")
  end
end