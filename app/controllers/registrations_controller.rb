class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end
end
