class HeadlinesController < ApplicationController

  # GET /scrape
  def scrape
    @headlines = Headline.scrape
  end

  # GET /headlines
  def index
    @headlines = Headline.all
    render json: @headlines.to_json
  end

end
