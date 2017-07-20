class Api::VehiclesController < ApplicationController

  respond_to? :json

  skip_before_filter  :verify_authenticity_token
  def index
    @vehicles = Vehicle.all
  end

  def create
    @vehicle = Vehicle.new params_vehicle
    
    if @vehicle.save        
      render :show, status: :created, location: @vehicle
    else      
       render json: {errors: @vehicle.errors, success: false}, status: false 
    end
    
  end

  def params_vehicle
    pars = params.require(:vehicle).permit(:plate, :color, :year)
  end
end