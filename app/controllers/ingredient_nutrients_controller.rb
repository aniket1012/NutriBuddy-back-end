class IngredientNutrientsController < ApplicationController
  before_action :set_ingredient_nutrient, only: [:show, :update, :destroy]


  def index
    @ingredient_nutrients = IngredientNutrient.allocate

    render json: @ingredient_nutrients
  end

  def show
    render json: @ingredient_nutrients
  end

  def create
    @ingredient_nutrient = IngredientNutrient.new(ingredient_nutrient_params)

    if @ingredient_nutrient.save
      render json: @ingredient_nutrient, status: :created, location: @ingredient_nutrient
    else 
      render json: @ingredient_nutrient.errors, status: :unprocessable_entity
  end

  def update
    if @ingredient_nutrient.update(ingredient_nutrient_params)
      render json: @ingredient_nutrient
    else
      render json: @ingredient_nutrient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @ingredient_nutrient.destroy
  end

  private

  def set_ingredient_nutrient
      @ingredient_nutrient = IngredientNutrient.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ingredient_nutrient_params
      params.require(:ingredient_nutrient).permit(:nutrient_id, :ingredient_id)
    end


end
