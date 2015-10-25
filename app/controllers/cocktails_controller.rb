class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    # @cocktail = Cocktail.find(params[:id])
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)

    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy

    redirect_to :back
  end
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
