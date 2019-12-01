class OnepageController < ApplicationController
  def index
  end

  def about
    render 'info/about'
  end

  def contact
    render 'info/contact'
  end
end