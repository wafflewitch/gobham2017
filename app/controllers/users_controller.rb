class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [ :show, :edit, :update, :destroy ]

  def new
    @user = User.new
  end

  def show
  end

  def edit
    if @user.save
      flash[:success] = "Information updated!"
      redirect_to user_path(@user)
    end
  end

  def index
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Go Bham!"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :picture, :photo, :photo_cache, :password, :encrypted_password)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
