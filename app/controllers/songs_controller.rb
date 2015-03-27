class SongsController < ApplicationController
  def index
    @songs = Song.all.sort_by(&:title)

    respond_to do |format|
      format.html.phone {redirect_to '/mobile-index'}
      format.json {render @songs.to_json}
    end
  end

  def show_song
    @song = Song.find(params["song"])

    respond_to do |format|
      format.js
    end
  end
end
