# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# require 'faker'









#ads.destroy_all

5.times do |index|
Ad.create!([{
name: "frank #{index}",
description: "nice bike #{index}",
price: "#{index}"+"5",
seller_id: "#{index}"+"1",
email: "frank@weymouth"+ "#{index}",
img_url: "https://www.cyrusher.co.uk/products/xf800-ebike?variant=42606516142293&currency=GBP&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&https://www.cyrusher.co.uk/?utm_source=google&utm_medium=roas&utm_campaign=Pmax2&utm_id=Pmax2&gad_source=1&gclid=Cj0KCQiAwbitBhDIARIsABfFYILAUnvBht5HYqQT-qNTes7BibxAxaomNMBvUlfB7qYSd2HvIv_gkq8aAuTTEALw_wcB"

  
}])

end




 # ads.create!(name: "Name #{index}",
  #              description: "Description #{index}",
   #             price: "Price #{index}",
    #            seller_id: "Seller_id #{index}",
     #           email: "Email #{index}",
      #          image_url: "Image_url #{index}")				
				
				
#end

#p "Created #{ads.count} ads"