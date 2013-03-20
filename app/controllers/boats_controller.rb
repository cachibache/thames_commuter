class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find_by_id(params[:id]) || Boat.find_by_slug(params[:slug])
    raise ActiveRecord::RecordNotFound if @boat.nil?
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
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    if @boat.update_attributes(params[:boat])
      redirect_to @boat
    else
      render :edit
    end
  end

  def destroy
    @boat = Boat.find(params[:id]).delete
    redirect_to boats_path
  end
end
