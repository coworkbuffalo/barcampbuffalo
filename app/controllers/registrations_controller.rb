class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(params[:registration])
    if @registration.save
      flash[:success] = "Thanks for registering! You'll get an email soon confirming it. See you at BarCamp!"
      redirect_to registrations_path
    else
      render :new
    end
  end

  def index
    @registrations = Registration.all
  end
end
