class SongsController < ApplicationController
  respond_to :html, :json

  def index
    @songs = Song.all.sort_by(&:title)
    respond_with(@songs)
  end

  def show_song
    @song = Song.find(params["song"])

    respond_to do |format|
      format.js
    end
  end
end
