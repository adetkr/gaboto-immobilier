class FlatsController < ApplicationController
  def new
    @flat = Flat.new()
  end

  def flats_params
    params.require(:flat).permit(:title, :body, photos: [])
  end
end
