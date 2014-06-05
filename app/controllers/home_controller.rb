class HomeController < ApplicationController
  require 'open-uri'

  def index
    @index = true
    @search = false
  end

  def search
    @index = false
    @search = true
    name = params[:name]
    if name
      @vegetables = Vegetable.where('name LIKE ?', "%#{name.downcase}%")
    end

    render :index
  end
end
