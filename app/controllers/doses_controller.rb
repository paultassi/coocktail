class DosesController < ApplicationController
  before_action :find_cocktail, only: [:new, :create]

  def new
    @cocktail    = Cocktail.find(params[:cocktail_id])
    @dose        = Dose.new
    @ingredients = Ingredient.all
  end

  def create
    @dose        = @cocktail.doses.new(doses_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def find_cocktail
    @cocktail    = Cocktail.find(params[:cocktail_id])
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to :back
  end

  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
