class AdsController < ApplicationController



def show
 
 @ad = Ad.find(params[:id])
end



 # Only allow a list of trusted parameters through.
   # def ad_params
    #  params.require(:ad).permit(:name, :description, :price, :seller_id, :email, :img_url)
   # end




end
