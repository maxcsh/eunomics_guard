# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Website.find_or_create_by( :name => "mylab" , :description => "mylab正式機" , :address => "http://www.mylab.com.tw" )
Website.find_or_create_by( :name => "mylab test" , :description => "mylab測試機" , :address => "http://test.mylab.com.tw" )
Website.find_or_create_by( :name => "eunomics" , :description => "良知官網" , :address => "http://www.eunomics.net" )
Website.find_or_create_by( :name => "drchinglish" , :description => "艾迪教學網" , :address => "http://drchinglish.com" )
Website.find_or_create_by( :name => "tpsci" , :description => "臺北科學日" , :address => "http://tpsci.tw" )
Website.find_or_create_by( :name => "guanrong" , :description => "冠榮清潔社官網" , :address => "http://guanrong.tw" )
Website.find_or_create_by( :name => "chunfu" , :description => "泉富文件轉換" , :address => "http://chunfu.eunomics.net" )
Website.find_or_create_by( :name => "dnose" , :description => "David's nose" , :address => "http://dnose.tw" )
Website.find_or_create_by( :name => "posgogo" , :description => "謹平posgogo" , :address => "http://www.posgogo.com" )
Website.find_or_create_by( :name => "annaerp" , :description => "捷尼皮件ERP" , :address => "http://139.162.20.195" )
Website.find_or_create_by( :name => "crm" , :description => "貝兒花園CRM" , :address => "http://test.mylab.com.tw:5000" )
Website.find_or_create_by( :name => "prophet" , :description => "商發院商情預警系統" , :address => "http://cdri-prophet.cloudapp.net" )