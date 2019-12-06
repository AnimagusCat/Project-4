class OutletsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show, :search, :result]

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
    # @cuisines = Cuisine.all
  end

  def edit
    @outlet = Outlet.find(params[:id])
    # @cuisines = Cuisine.all

    unless (@outlet.user_id === current_user.id)
        redirect_to outlets_path
      end
  end

  def create
    @outlet = Outlet.new(outlet_params)

    @outlet.user = current_user
    # @cuisines = Cuisine.all

    ##CLOUDINARY PORTION####
    # uploaded_logo = outlet_params[:logo].path
    # cloudinary_file_logo = Cloudinary::Uploader.upload(uploaded_logo)

    # @outlet.update(outlet_params)
    # @outlet.logo = cloudinary_file_logo["url"]

    ######MENU UPLOAD#####
    uploaded_menu = outlet_params[:menu].path
    cloudinary_file_menu = Cloudinary::Uploader.upload(uploaded_menu)

    @outlet.update(outlet_params)
    @outlet.menu = cloudinary_file_menu["url"]

    # p uploaded_logo
    p uploaded_menu

    ###########################

    @outlet.save
    redirect_to @outlet
  end

  def update
    @outlet = Outlet.find(params[:id])
    # @cuisines = Cuisine.all

   ######MENU UPLOAD#####
    uploaded_menu = outlet_params[:menu].path
    cloudinary_file_menu = Cloudinary::Uploader.upload(uploaded_menu)

    @outlet.update(outlet_params)
    @outlet.menu = cloudinary_file_menu["url"]

    p uploaded_menu

    @outlet.save
    redirect_to @outlet
  end

  def destroy
  end

  def search
    p "//////////////////////"

    # @outlets = Outlet.where(road: params[:keyword])
    # @outlets = Outlet.where("road = ?", params[:keyword])
    @outlets = Outlet.where("road LIKE ?", "%#{params[:keyword]}%")

    p 'this is the outlets in search'
    p @outlets

    render "result"
  end

  def result
     p '@@@@@@@@@@@@@@@@@@@@@@@@@@@'
     @outlets = Outlet.all
     p 'this is the outlets in result'
     p @outlets
     p '@@@@@@@@@@@@@@@@@@@@@@@@@@@'
  end

  private
    def outlet_params
      params.require(:outlet).permit(:name, :block, :road, :building, :unit, :postal_code, :halal_type, :dining_type, :menu, :website, :phone, :opening_hours)
    end
end