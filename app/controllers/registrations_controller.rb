class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(params[:registration])
    if @registration.save
      Notifier.confirmation(@registration).deliver
      flash[:success] = "Thanks for registering! You'll get an email soon confirming it. See you at BarCamp!"
      redirect_to registrations_path
    else
      render :new
    end
  end

  def index
    @registrations = Registration.all
  end

  def edit
    @registration = Registration.find_by_key!(params[:id])
  end

  def update
    @registration = Registration.find_by_key!(params[:id])

    if @registration.update_attributes(params[:registration])
      flash[:success] = "Updated your info! Thanks!"
      redirect_to registrations_path
    else
      render :edit
    end
  end
end
