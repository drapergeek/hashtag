class SearchesController < ApplicationController


  def new
    @search_term = "##{params[:search]}"
    @tweets = Twitter.search(@search_term)
    render "tweets/index"
  end

end
