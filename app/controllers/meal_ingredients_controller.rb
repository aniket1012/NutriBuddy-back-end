class MealIngredientsController < ApplicationController
   before_action :set_meal_ingredient, only: [:show, :update, :destroy]

  def index
    @meal_ingredients = MealIngredient.all

    render json: @meal_ingredients
  end

  def show
    render json: @meal_ingredient
  end

  def create
    @meal_ingredient = MealIngredient.new(meal_ingredient_params)

    if @meal_ingredient.save
      render json: @meal_ingredient, status: :created, location: @meal_ingredient
    else
      render json: @meal_ingredient.errors, status: :unprocessable_entity
    end
  end

  def update
     if @meal_ingredient.update(meal_ingredient_params)
      render json: @meal_ingredient
    else
      render json: @meal_ingredient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @meal_ingredient.destroy
  end

  private

  def set_meal_ingredient
      @meal_ingredient = MealIngredient.find(params[:id])
    end

    
    def meal_ingredient_params
      params.require(:meal_ingredient).permit(:meal_id, :ingredient_id)
    end

end
