class SightingsController < ApplicationController

  def index 
    sightings = Sighting.all 
    render json: sightings, include: [:bird, :location], except: [:updated_at, :created_at]
  end

  def show 
    sighting = Sighting.find_by(id: params[:id])
    if sighting
    render json: sighting, include: [:location, :bird]
    else 
      render json: { message: "What'cha doin'?!"}
    end
  end
end
