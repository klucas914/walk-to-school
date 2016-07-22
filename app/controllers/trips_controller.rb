class TripsController < ApplicationController
  def index
  	@trips = Trip.all
  	@time = Time.now.strftime(' %B %d, %Y %I:%M %p')
  end

  def show
    @trip = Trip.find(params[:id])
    @time = Time.now.strftime(' %B %d, %Y %I:%M %p')
  end

  def new
  	@trip = Trip.new
  	@time = Time.now.strftime(' %B %d, %Y %I:%M %p')
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def create
    @trip = Trip.new(trip_params)
    @time = Time.now.strftime(' %B %d, %Y %I:%M %p')

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

  private
    def trip_params
    	params.require(:trip).permit(:child_name, :starting_point, :destination, :departure_time, :arrival_time, :trip_complete)
    end
end