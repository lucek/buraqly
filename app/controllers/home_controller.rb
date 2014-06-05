class HomeController < ApplicationController
  require 'open-uri'

  def index
    @index = true
  end

  def search
    @index = false
    name = params[:name]
    if name
      @vegetables = Vegetable.where('name LIKE ?', "%#{name.downcase}%")
    end

    render :index
  end
end
