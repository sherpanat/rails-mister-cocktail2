class DosesController < ApplicationController
  before_action :find_dose, only: [:create, :destroy]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      # redirect_to 
    else

    end
  end

  def destroy
    @dose.destroy
  end

  private

  def find_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail, :dose)
  end
end
