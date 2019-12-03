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

    ##CLOUDINARY PORTION####
    uploaded_logo = outlet_params[:logo].path
    cloudinary_file_logo = Cloudinary::Uploader.upload(uploaded_logo)

    @outlet.update(outlet_params)
    @outlet.logo = cloudinary_file_logo["url"]

    ######MENU UPLOAD#####
    uploaded_menu = outlet_params[:menu].path
    cloudinary_file_menu = Cloudinary::Uploader.upload(uploaded_menu)

    @outlet.update(outlet_params)
    @outlet.menu = cloudinary_file_menu["url"]

    p uploaded_logo
    p uploaded_menu

    ###########################

    @outlet.save
    redirect_to @outlet

    # uploaded_file = outlet_params[:logo].path
    #   auth = Rails.application.credentials.cloudinary
    #   p auth
    #   p "//////////////////////////"
    #   if ENV.key? ("CLOUDINARY_URL")
    #     cloudinary_file = Cloudinary::Uploader.upload(uploaded_file)
    #   else
    #     cloudinary_file = Cloudinary::Uploader.upload(uploaded_file, auth)
    #   end
    #   #store this public_id value to the database
    #   #cloudnary_file[‘public_id’]
    #   # render json: cloudnary_file
    #   # p cloudnary_file
    #   # s1 = cloudnary_file['public_id']
    #   @outlet.logo = cloudinary_file["url"]
      # @employers_profile.cloud_key = s1
      # @explorers_profile.photo_url = s2




    # if (@outlet.save)
    #   redirect_to @outlet
    # else
    #   render 'new'
    # end
  end

  def update
    @outlet = Outlet.find(params[:id])
    @cuisines = Cuisine.all

    ##CLOUDINARY PORTION####
    uploaded_file = outlet_params[:logo].path
    cloudinary_file = Cloudinary::Uploader.upload(uploaded_file)

    @outlet.update(outlet_params)
    @outlet.logo = cloudinary_file["url"]

    p outlet_params
    ###########################

    @outlet.save
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