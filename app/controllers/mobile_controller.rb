class MobileController < ApplicationController
  layout 'mobile'
  def index
    @songs = Song.all.sort_by(&:title)
  end
end
