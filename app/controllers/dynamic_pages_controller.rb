require 'srzadmin'

class DynamicPagesController < ApplicationController
  before_action :setup

  def home
    api = SrzAdmin.new
    @items = api.items
  end

  def catalog
    api = SrzAdmin.new

    begin
      @items = api.items
    rescue
      @items = nil
    end
    ap @items

    if @items.respond_to?(:code)
      case @items.code
        when 404
          @items = nil
        when 500.600
          @items = nil
      end
    end
  end

  private
  def setup
    @base_image_uri = 'http://res.cloudinary.com/myph/image/upload/'
  end
end