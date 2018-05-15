class HeadlinesController < ApplicationController

  # GET /
  def whack
    render json: {'This': 'is working', 'and you have': 'hit whack'}
  end

  # GET /headlines
  def index
    @headlines = Headline.all
    render json: @headlines.to_json
  end

end
