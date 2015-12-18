namespace :guard do
  desc "scrap"
  task :scrap => :environment do
    require 'open-uri'
    Website.all.each do |web|
      doc = open( web.address )
      web.update( :status => doc.status.to_s , :message => doc.meta.to_s )
    end
    
  end

end