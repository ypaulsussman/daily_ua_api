class HeadlinesController < ApplicationController

  # GET /
  def whack
    render json: {'This': 'is working', 'and you have': 'hit whack'}
  end

  # GET /scrape
  def scrape
    puts "**********scrape was called!**********"
    puts request.headers
    puts "those your headers, above ^"

    @headlines = Headline.scrape
    redirect_to action: :index
  end

  # GET /headlines
  def index
    @headlines = Headline.all
    render json: @headlines.to_json
  end

end
