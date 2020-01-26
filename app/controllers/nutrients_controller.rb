class NutrientsController < ApplicationController
  before_action :set_nutrient, only: [:show, :update, :destroy]


  def index
    @nutrients = Nutrient.all 

    render json: @nutrients
  end

  def show
    render json: @nutrient 
  end

  def create
    @nutrient = Nutrient.new(nutrient_params)

    if @nutrient.save
      render json: @nutrient, status: :created, location: @nutrient
    else 
      render json: @nutrient.errors, status: :unprocessable_entity 
    end
  end

  def update
    if @nutrient.update(nutrient_params)
      render json: @nutrient
    else 
      rendre json: @nutrient.errors, status: :unprocessable_entity 
    end
  end

  def destroy
    @nutrient.destroy
  end

  private 
    
    def set_nutrient
      @nutrient = Nutrient.find(params[:id])
    end 

    def nutrient_params
      params.require(:nutrient).permit(:name, :unit, :qty, :tag_id)
    end 

end
