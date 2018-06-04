class HeadlinesController < ApplicationController

  # GET /
  def all_dates
    @dates = Headline.distinct.pluck(Arel.sql('DATE(created_at)'))
    @sorted_dates = @dates.sort { |x,y| y <=> x }
    render json: @sorted_dates.to_json
  end

  # GET /scrape
  def scrape
    if request.headers["X-Appengine-Cron"]
      @headlines = Headline.scrape      
    end
    redirect_to action: :index
  end

  # GET /headlines
  def index
    @headlines = Headline.all
    render json: @headlines.to_json
  end

end
