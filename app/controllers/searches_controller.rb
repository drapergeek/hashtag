class SearchesController < ApplicationController
  respond_to :html, :json

  def index

  end

  def new
    @search_term = "##{params[:search]}"
    @tweets = Twitter.search(@search_term)
    logger.info @tweets
    respond_with @tweets
  end

end
