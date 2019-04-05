class DosesController < ApplicationController
  def destroy
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      redirect_to cocktails_path
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient, :description)
  end
end
