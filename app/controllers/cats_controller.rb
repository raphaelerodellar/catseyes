class CatsController < ApplicationController
  skip_before_action :authenticate_owner!, only: [:index, :show]
  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
  end
end
