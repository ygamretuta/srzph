require 'srzadmin'

class DynamicPagesController < ApplicationController
  before_action :setup

  def home
    api = SrzAdmin.new
    @items = api.items
  end

  def catalog
    api = SrzAdmin.new
    @items = api.items
  end

  private
  def setup
    @base_image_uri = 'http://res.cloudinary.com/myph/image/upload/'
  end
end