class DrinksController < ApplicationController
  after_action :set_search

  @@search =  nil

  def index
    @search = params[:search]
    @type = params[:searchtype]
    if @type === "s" && @search != ""
      @drink = Drink.search(@search)
    #elsif @type === "i" && search != ""
      #@drink = Drink.ingredientsearch(search)
    elsif @type === "r" || @search === ""
      @drink = Drink.random
    else
      @drink = Drink.search(@@search)
    end
  end

  def random
    @drink = Drink.random
  end

  def show
    @drinks = Drink.search_details(params[:details])
  end

  private

  def set_search
    unless params[:search].nil? || params[:search].empty?
      @@search = params[:search]
    end
  end
  
end