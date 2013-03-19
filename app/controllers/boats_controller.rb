class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(params[:boat])
    if @boat.save
      redirect_to @boat
    else
      render :new
    end
  end

  def edit
  end

  def update
    
  end

  def destroy
    
  end
end
