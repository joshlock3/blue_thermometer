class PagesController < ApplicationController
  def home
    @tracks = Track.all
  end

  def help
  end

  def contact
  end
end
