class UsersController < ApplicationController

  before_action :check_if_logged_in, except: [:new, :create, :index, :show]

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params

    if @user.persisted?
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      render :new
    end # if

  end # create

  def index
    @users = User.all
  end

  def find #a custom route 

  end

  def show
    @user = User.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :admin, :email, :password, :password_confirmation)
  end



end # class UsersController
