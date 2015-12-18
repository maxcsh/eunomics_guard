class WebsitesController < ApplicationController

  def index
    @websites = Website.all
  end

  def scrap
    @websites = Website.all
    require 'open-uri'
    @websites.each do |web|
      begin
        doc = open( web.address , :read_timeout => 10 )
        web.update( :status => doc.status.to_s , :message => doc.meta.to_s )
      rescue
        web.update( :status => $! , :message => $! )
      end
    end
    redirect_to root_path
  end

  def new
    @website = Website.new
  end

  def edit
    @website = Website.find( params[:id] )
  end

  def update
    @website = Website.find( params[:id] )
    if @website.update( website_params )
      redirect_to root_path
    end
  end

  def create
    @website = Website.create( website_params )
    redirect_to root_path
  end

  def destroy
    @website = Website.find( params[:id] )
    @website.destroy
    redirect_to root_path
  end

  private

  def website_params
    params.require( :website ).permit( :name , :description , :address , :expected_str )
  end

end
