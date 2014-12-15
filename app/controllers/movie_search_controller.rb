class MovieSearchController < ApplicationController
  def index
  end

  def results
    response = RestClient.get "http://www.omdbapi.com/?s=#{params[:title]}"
    @results = JSON.parse(response.body)
  end
end
