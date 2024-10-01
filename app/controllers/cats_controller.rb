class CatsController < ApplicationController
  skip_before_action :authenticate_owner!, only: :index
  def index
    @cats = Cat.all
  end
end
