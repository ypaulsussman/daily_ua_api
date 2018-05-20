class HeadlinesController < ApplicationController

  # GET /
  def whack
    render json: {'This': 'is working', 'and you have': 'hit whack'}
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
