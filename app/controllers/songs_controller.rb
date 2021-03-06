class SongsController < ApplicationController

  def index
    @songs = Song.where(archived: [false,nil]).sort_by(&:title)

    respond_to do |format|
      format.json {render :json => @songs}
      format.html
      format.html.phone { redirect_to '/mobile-index' }
    end
  end

  def show_song
    @song = Song.find(params["song"])

    respond_to do |format|
      format.js
    end
  end
end
