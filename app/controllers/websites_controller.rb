class WebsitesController < ApplicationController

  def index
    @websites = Website.all
  end

  def scrap
    @websites = Website.all
    require 'open-uri'
    @websites.each do |web|
      doc = open( web.address )
      web.update( :status => doc.status.to_s , :message => doc.meta.to_s )
    end
    redirect_to root_path
  end
end
