class PassengersController < ApplicationController
  def index
    @passengers = Passenger.all
  end

  def show
    @passenger = Passenger.find_by_id(params[:id]) || Passenger.find_by_slug(params[:id])
    raise ActiveRecord::RecordNotFound if @passenger.nil?
  end

  def new
    @passenger = Passenger.new
  end

  def create
    @passenger = Passenger.new(params[:passenger])
    if @passenger.save
      redirect_to @passenger
    else
      render :new
    end
  end

  def edit
    @passenger = Passenger.find(params[:id])
  end

  def update
    @passenger = Passenger.find(params[:id])
    if @passenger.update_attributes(params[:passenger])
      redirect_to @passenger
    else
      render :edit
    end
  end

  def destroy
    @passenger = Passenger.find(params[:id]).delete
    redirect_to passengers_path
  end
end
