class Api::TopStoriesController < ApplicationController

  def index
    search_term = params[:section]
    @stories = HTTP
      .get("https://api.nytimes.com/svc/topstories/v2/#{search_term}.json?api-key=Tv8480QuXv7Cg0XkjRx3I3DT57IHKVb0")
      .parse

    render 'index.json.jbuilder'
  end

end
