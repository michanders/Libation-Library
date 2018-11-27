require 'open-uri'
require 'net/http'
require 'json'

class Drink < ApplicationRecord

  def self.search(input)
    url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{input}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
  
  #def self.ingredientsearch(input)
    #url = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=#{input}"
    #uri = URI(url)
    #response = Net::HTTP.get(uri)
    #JSON.parse(response)
  #end

  def self.random
    url = "https://www.thecocktaildb.com/api/json/v1/1/random.php"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
  
  def self.search_details(drink_id)
    url = "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=#{drink_id}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

end