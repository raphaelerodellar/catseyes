class CatsController < ApplicationController
  skip_before_action :authenticate_owner!, only: [:index, :show]
  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @owner = Owner.find(params[:owner_id])
    @cat = Cat.new
  end

  def create
    @cat = Cat.create(cat_params)
    @owner = Owner.find(params[:owner_id])
    @cat.owner = @owner
    raise
    if @cat.save
      redirect_to owner_path(@owner)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.update(cat_params)
    redirect_to cat_path(@cat)
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :age, :size,
                                :heavy_hair_loss, :sweet_cuddly_temper, :strong_purring,
                                :description, :address, :price_per_day)
  end
end
