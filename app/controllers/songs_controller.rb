class SongsController < ApplicationController
  def index
    @songs = Song.all.sort_by(&:title)
  end
end
