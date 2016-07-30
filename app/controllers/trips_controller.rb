class TripsController < ApplicationController
  def index
  	@trips = Trip.where("arrival_time IS NULL")
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
  	@trip = Trip.new
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      redirect_to @trip
    else
      render 'new'
    end
  end

  def update
    @trip = Trip.find(params[:id])

    if @trip.update(trip_params)
    	redirect_to @trip
    else
    	render 'edit'
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy

    redirect_to trips_path
  end

  def arrive
    @trip = Trip.find(params[:id])

    if @trip.update(arrival_time: Time.now)
      flash[:notice] = "#{@trip.child_name} successfully arrived!"
      redirect_to trips_path
    else
      flash[:alert] = "There was an error marking this child as arrived. Please try again." 
    end
  end

  def archived
    @trips = Trip.where("arrival_time IS NOT NULL").reverse.each
  end

  private
    def trip_params
    	params.require(:trip).permit(:child_name, :starting_point, :destination, :departure_time, :arrival_time, :trip_complete, :child_id, :location_id)
    end
end
