class OutletsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    render plain: params[:outlet].inspect
  end

  def update
  end

  def destroy
  end
end