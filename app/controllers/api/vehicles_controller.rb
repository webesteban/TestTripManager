class Api::VehiclesController < ApplicationController

  skip_before_filter  :verify_authenticity_token
  def index
    @vehicles = Vehicle.all
  end

  def create
    @vehicle = Vehicle.new(plate: params[:plate], color: params[:color], year: params[:year])
    
    if @vehicle.save        
      render :show, status: :created, location: @vehicle
    else      
       render json: {errors: @vehicle.errors, success: false}, status: false 
    end
    
  end
end