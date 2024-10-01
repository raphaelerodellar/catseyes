class PagesController < ApplicationController
  skip_before_action :authenticate_owner!, only: :home

  def home
  end
end
