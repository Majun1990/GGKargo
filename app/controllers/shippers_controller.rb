class ShippersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show]
  def index
    @shippers = Shipper.all
  end

  def new
    @shipper = Shipper.new
  end

  def create
    @shipper = current_user.shippers.create(shipper_params)

    if @shipper.valid?
      redirect_to shippers_path(@shipper)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @shipper = Shipper.find(params[:id])
  end
  
  private

  def shipper_params
    params.require(:shipper).permit(
      :name, 
      :address, 
      :phone_number,
      :email)
  end
end
