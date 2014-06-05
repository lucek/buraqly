class HomeController < ApplicationController
  require 'open-uri'

  def index
    @index = true
    @search = false
    @history = false
  end

  def search
    @index = false
    @search = true
    @history = false
    name = params[:name]
    if name
      @vegetables = Vegetable.where('name LIKE ?', "%#{name.downcase}%")

      if current_user && !current_user.incognito
        ActiveRecord::Base.transaction do
          user_search = UserSearch.where(date: Date.today, user_id: current_user.id, search_term: name)

          if !user_search.any?
            user_search = UserSearch.create(
              date: Date.today,
              search_term: name,
              user_id: current_user.id
            )
          end

          if @vegetables.any?
            @vegetables.each do |vegetable|
              search_result = SearchResult.where(user_search_id: user_search, vegetable_id: vegetable.id)
              
              if !search_result.any?
                SearchResult.create(
                  user_search_id: user_search.id,
                  vegetable_id: vegetable.id
                )
              end
            end
          end
        end
      end
    end

    render :index
  end

  def history
    @history = true
    @index = false
    @search = false
    @vegetables = []

    @searches = current_user.user_searches

    render :index
  end
end
