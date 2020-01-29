class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.create(inquiry_params)
    redirect_to root_path
  end

  def show
    @inquiry = Inquiry.last
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:first_name, :last_name, :phone_number, :email_address, :comment)
  end
end
