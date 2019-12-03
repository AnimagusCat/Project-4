class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @outlet = @user.outlet
    # @user = user.find_by(id: params[:id])

    # if (@user === nil)
    #   redirect_to root_path
    # else

    #   @outlet = @user.outlet

    #   unless (@user.id === current_user.id)
    #     redirect_to root_path
    #   end

    # end

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    ##CLOUDINARY PORTION####
    uploaded_file = user_params[:avatar].path
    cloudinary_file = Cloudinary::Uploader.upload(uploaded_file)

    @user.update(user_params)
    @user.avatar = cloudinary_file["url"]

    p user_params
    ###########################

    @user.save
    redirect_to @user
  end

  private
  def user_params
    params.require(:user).permit(:name, :avatar)
  end

end