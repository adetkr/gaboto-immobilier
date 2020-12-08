class FlatsController < ApplicationController
  before_action :authenticate_user! , only:  [:new, :create]
  def new
    @flat = Flat.new()
  end

  def index
    @flats = Flat.all
    @markers = nil
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

  def show
    @flat = Flat.find(params[:id])
    @contact = Contact.new()
    @contact.user = current_user
    @contact.flat = @flat

  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def params_flat
    params.require(:flat).permit(:country, :description, :operation_type, :house_type, :address, :rooms, :pieces, :surface, :price, :equipments, photos: [])
  end
end
