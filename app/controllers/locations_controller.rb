class LocationsController < ApplicationController

  # GET /location
  # GET /location.json
  def show
  end

  # POST /location
  # POST /location.json
  def create
    current_user.update(location_params)

    if current_user.save
      render action: 'show', status: :ok, location: current_user
    else
      render json: current_user.errors, status: :unprocessable_entity
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:latitude, :longitude)
    end
end
