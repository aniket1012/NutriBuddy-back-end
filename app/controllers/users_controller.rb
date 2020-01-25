class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all

    render json: @users
  end

  def show
    render json: @user
  end

  def login
    user = User.find_by(email: params[:email])
    if user && user.password == params[:password]
      render json: user
      else 
        render json: {errors: "Incorrect Email or Password, Please Try Again or Create an Account."}
      end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: {errors:@user.errors.full_messages}
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: {errors:@user.errors.full_messages}
    end
  end

  def destroy
     @user.destroy
  end

  private 

  def set_user
      @user = User.find(params[:id])
    end

    
    def user_params
      params.require(:user).permit(:user_name, :email, :password)
    end


end
