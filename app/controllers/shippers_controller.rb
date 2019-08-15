class ShippersController < ApplicationController
  def index
    @shippers = Shipper.all
  end
  def new
    @shipper = Shipper.new
  end

  def create
    Shipper.create(shipper_params)
    redirect_to shippers_path
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
