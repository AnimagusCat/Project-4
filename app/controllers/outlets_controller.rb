class OutletsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show, :search]

  def index
    @outlets = Outlet.all

    respond_to do |format|
      format.json {
          render :json => @outlets
      }

      format.html
    end
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
    # @outlet.halal_type = params[:halal_type]
    # @outlet.dining_type = params[:dining_type]
    @outlet.user = current_user
    @cuisines = Cuisine.all

    p '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
    puts current_user
    p params
    p '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'

    @outlet.save
    redirect_to @outlet

    # if (@outlet.save)
    #   redirect_to @outlet
    # else
    #   render 'new'
    # end
  end

  def update
    @outlet = Outlet.find(params[:id])
    @cuisines = Cuisine.all

    @outlet.update(outlet_params)
    redirect_to @outlet
  end

  def destroy
  end

  def search
    p "//////////////////////"
    # name = request.params[:road]

    @outlets = Outlet.where(road: params[:keyword])
    p @outlets
    render "index"
  end

  private
    def outlet_params
      params.require(:outlet).permit( :name, :logo, :block, :road, :building, :unit, :postal_code, :halal_type, :dining_type, :menu, :website, :phone, :opening_hours, :cuisine_ids => [])
    end
end