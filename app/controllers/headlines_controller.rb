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
    @query_date = params[:date_to_show]
    @daily_headlines = Headline.where("DATE(created_at) = ?", @query_date.to_date)
    render json: @daily_headlines.to_json
  end

end
