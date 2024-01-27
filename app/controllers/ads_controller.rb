class AdsController < ApplicationController
#before_action :set_ad, only: %i[ show edit update destroy ]


def show
 
 @ad = Ad.find(params[:id])
  #@products=Product.order(:title)
end

def edit



end



 #private
    # Use callbacks to share common setup or constraints between actions.
  #  def set_ticket
   #   @ticket = Ticket.find(params[:id])
    #end




 # Only allow a list of trusted parameters through.
   # def ad_params
    #  params.require(:ad).permit(:name, :description, :price, :seller_id, :email, :img_url)
   # end




end
