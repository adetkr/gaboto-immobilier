class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @flats = Flat.all.order("created_at DESC").limit(4)
  end

  def myflats
    @flats = Flat.where(user: current_user)
  end
end
