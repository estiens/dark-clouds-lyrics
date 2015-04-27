class MobileController < ApplicationController
  layout 'mobile'
  def index
    @songs = Song.where(archived: [false,nil]).sort_by(&:title)
  end
end
