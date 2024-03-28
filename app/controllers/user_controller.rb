class UserController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params["id"])
  end

  def new
  end

  def login
    @badrequest = true
  end

  def connexion
    @user = User.find_by(email: params["email"])
    if @user && @user.password == params["password"]
      redirect_to "/dashboard"
    else
      redirect_to "/user/login"
    end
  end

  def create
    user = User.new
    user.username = params["username"]
    user.email = params["email"]
    user.password = params["password"]
    user.save
    render json: user.id
    #redirect_to "/users/#{user.id}"
  end

  def edit
    @user = User.find_by(id: params["id"])
  end

  def update
    user = User.find_by(id: params["id"])
    user.name = params["name"]
    user.email = params["email"]
    user.save
    redirect_to "/users/#{user.id}"
  end

  def destroy
    user = User.find_by(id: params["id"])
    user.destroy
    redirect_to "/users"
  end
end
