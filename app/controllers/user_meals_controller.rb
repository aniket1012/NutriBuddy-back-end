class UserMealsController < ApplicationController
  before_action :set_user_meal, only: [:show, :update, :destroy]
  
  def index
    @user_meals = UserMeal.all

    render json: @user_meals
  end


  def show
    render json: @user_meal
  end

  def create
    @user_meal = UserMeal.new(user_meal_params)

    if @user_meal.save
      render json: @user_meal, status: :created, location: @user_meal
    else
      render json: @user_meal.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user_meal.update(user_meal_params)
      render json: @user_meal
    else
      render json: @user_meal.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user_meal.destroy
  end
  

  private

    def set_user_meal
      @user_meal = UserMeal.find(params[:id])
    end

    def user_meal_params
      params.require(:user_meal).permit(:user_id, :meal_id)
    end

end
