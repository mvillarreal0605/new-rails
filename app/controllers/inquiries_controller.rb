class InquiriesController < ApplicationController
  def create
    @inquiry = Inquiry.new(inquiry_params)

    if @inquiry.save
      flash[:notice] ='Your inquiry was reveived. Thank you!'
    else
      flash[:alert] = 'Oops, something went wrong...'
    end

    redirect_to root_path
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:first_name, :last_name, :interest, :email, :message)
  end
end
