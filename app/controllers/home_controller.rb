class HomeController < ActionController::Base
  require 'open-uri'

  def index
  end

  def search
    name = params[:name]
    if name
      @vegetables = Vegetable.where('name LIKE ?', "%#{name.downcase}%")
    else
      @vegetables = Vegetable.all
    end

    render :index
  end
end
