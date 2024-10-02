class AvailabilitiesController < ApplicationController

  def destroy
    availability = Availability.find(params[:id])
    availability.destroy
    @cat = Cat.find(params[:cat_id])
    redirect_to cat_path(@cat)
  end

end
