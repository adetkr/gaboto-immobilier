class FlatsController < ApplicationController
  before_action :authenticate_user! , only:  [:new, :create]
  def new
    @flat = Flat.new()
  end

  def index

    search_params = params["search_flat"]
    @city_params = params[:search]
    @city_query_params = params[:query]
    @house_type = @city_params["house_type"]
    @operation_type = @city_params["operation_type"]
    if search_params
      @max_price = (search_params["max_price"] == "" ? Flat.maximum("rent") : search_params["max_price"])
      @min_price = (search_params["min_price"] == "" ? Flat.minimum("rent")  : search_params["min_price"])
      @max_surface = (search_params["max_surface"] == "" ? Flat.maximum("surface") : search_params["max_surface"])
      @min_surface = (search_params["min_surface"] == "" ? Flat.minimum("surface")  : search_params["min_surface"])
      @max_rooms = (search_params["max_rooms"] == "" ? Flat.maximum("rooms") : search_params["max_rooms"])
      @min_rooms = (search_params["min_rooms"] == "" ? Flat.minimum("rooms") : search_params["min_rooms"])
      @flats = Flat.where("rent <= ? AND rent >= ? AND surface <= ? AND surface >= ? AND rooms <= ? AND rooms >= ? ", @max_price, @min_price, @max_surface, @min_surface, @max_rooms, @min_rooms)
      if @city_params && @city_params[:query] != ""
        @flats = @flats.near(@city_params[:query], 30)
      elsif @city_query_params && @city_query_params != ""
        @flats = @flats.near(@city_query_params, 30)
      end
    else

      if @house_type != ""

        if @operation_type != ""
          @flats = Flat.where("house_type = ? AND operation_type = ?", @house_type, @operation_type).order("created_at DESC").geocoded
        else
          @flats = Flat.where("house_type = ?", @house_type).order("created_at DESC").geocoded
        end

      elsif @operation_type != ""

          @flats = Flat.where("operation_type = ?", @operation_type).order("created_at DESC").geocoded

      else

          @flats = Flat.all.order("created_at DESC").geocoded
      end



      if @city_params && @city_params[:query] != ""
        @flats = @flats.near(@city_params[:query], 5)
      elsif @city_query_params && @city_query_params != ""

        @flats = @flats.near(@city_query_params, 5)
      end

      @count = @flats.length
    end
        @markers = @flats.map do |flat|
      {
        cardId: flat.id,
        lat: flat.latitude,
        lng: flat.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { flat: flat }),
      }
    end
  end

  def create
    @flat = Flat.new(params_flat)
    @flat.user = current_user

    if @flat.save
      params.require(:flat)["equipment_ids"].each do |equipment_id|
          FlatEquipment.create(flat_id: @flat.id, equipment_id: equipment_id)
      end
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(params_flat)

    redirect_to flat_path(@flat)
  end

  def show
    @flat = Flat.find(params[:id])
    @contact = Contact.new()
    @contact.user = current_user
    @contact.flat = @flat

     @markers = [    {
      lat: @flat.latitude,
      lng: @flat.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { flat: @flat })
    }]

  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def params_flat
    params.require(:flat).permit(:country, :description, :operation_type, :house_type, :address, :rooms, :pieces, :surface, :price, :equipments, photos: [])
  end
end
