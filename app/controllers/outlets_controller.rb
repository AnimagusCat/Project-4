class OutletsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    @outlets = Outlet.all
  end

  def show
    @outlet = Outlet.find(params[:id])
  end

  def new
    @cuisines = Cuisine.all
  end

  def edit
    @outlet = Outlet.find(params[:id])
    @cuisines = Cuisine.all
  end

  def create
    @outlet = Outlet.new(outlet_params)
    @outlet.user_id = current_user
    @cuisines = Cuisine.all

    if (@outlet.save)
      redirect_to @outlet
    else
      render 'new'
    end
  end

  def update
    @outlet = Outlet.find(params[:id])
    @cuisines = Cuisine.all

    @outlet.update(outlet_params)
    redirect_to @outlet
  end

  def destroy
  end

  private
    def outlet_params
      params.require(:outlet).permit( :name, :logo, :block, :road, :building, :unit, :postal_code, :halal_type, :dining_type, :menu, :website, :phone, :opening_hours, :cuisine_ids => [])
    end
end