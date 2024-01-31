# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
 #require 'Faker'
 require 'faker'
 
 Product.destroy_all
 
 
 
 
 
 #title: Faker::Hipster.sentence
 
 
 #Product.create!(title:  "Lone User")

99.times do |n|
 # title  = Faker::Name.name
 # image_url = Faker::Name.name
# and another sort of syntax for adding posts for our users
  Product.create({title: Faker::Hipster.sentence, description: Faker::Hipster.sentence, image_url: Faker::Lorem.sentence})
end
 
 
 
 
 

#Add.destroy_all 80.times do add=Add.new(   name: Faker::Commerce.unique.product_name,description: "Surprising product",price: Faker::Commerce.price,seller_id: Faker::Commerce.id,email: "farnical@blue",end

#puts "created #{Add.count} products"







#adds.destroy_all

#50.times do |index|
#Add.create!([{
#name: "frank #{index}",
#description: "nice bike #{index}",
#price: "#{index}"+"5",
#seller_id: "#{index}"+"1",
#email: "frank@weymouth"+ "#{index}",
#img_url: #"https://www.cyrusher.co.uk/products/xf800-ebike?variant=42606516142293&currency=GBP&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&h#ttps://www.cyrusher.co.uk/?utm_source=google&utm_medium=roas&utm_campaign=Pmax2&utm_id=Pmax2&gad_source=1&gclid=Cj0KCQiAwbitBhDIARIsABfFYILAUnvBht5HYqQT-qNTes7BibxAxaomNMBvUlfB7#qYSd2HvIv_gkq8aAuTTEALw_wcB"

  
#}])

#end




 # ads.create!(name: "Name #{index}",
  #              description: "Description #{index}",
   #             price: "Price #{index}",
    #            seller_id: "Seller_id #{index}",
     #           email: "Email #{index}",
      #          image_url: "Image_url #{index}")				
				
				
#end

#p "Created #{ads.count} ads"