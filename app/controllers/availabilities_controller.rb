class AvailabilitiesController < ApplicationController

  def destroy
    availability = Availability.find(params[:id])
    availability.destroy
    @cat = Cat.find(params[:cat_id])
    redirect_to cat_path(@cat)
  end

  def new
    @cat = Cat.find(params[:cat_id])
    @availability = Availability.new
  end

  def create
    @cat = Cat.find(params[:cat_id])
    @availability = Availability.create(availability_params)
    @availability.cat = @cat
    if @availability.save
      redirect_to cat_path(@cat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def availability_params
    params.require(:availability).permit(:start_on, :end_on, :cat_id)
  end

end
