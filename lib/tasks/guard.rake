namespace :guard do
  desc "scrap"
  task :scrap => :environment do
    require 'open-uri'
    Website.all.each do |web|
      begin
        doc = open( web.address , :read_timeout => 10 )
        web.update( :status => doc.status.to_s , :message => doc.meta.to_s )
      rescue
        web.update( :status => $! , :message => $! )
      end
    end    
  end

end