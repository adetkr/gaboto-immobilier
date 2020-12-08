class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def myflats
    @flats = Flat.where(user: current_user)
  end
end
