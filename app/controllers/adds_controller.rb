class AddsController < ApplicationController
#before_action :set_product, only: %i[ show ]

def show


@adds = Add.all
 <% @adds.each do |add| %>
    
    <p>
      <%= add.name %>
    </p>
	
	
  <% end %>






 
# @adds = Add.find_by(id: params[:id])
end
def index
@adds = Add.all
#@add = Add.find_by(id: params[:id])
#@products = Product.all
end




 private
    # Use callbacks to share common setup or constraints between actions.
    def set_add
      @add = Add.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_params
      params.require(:add).permit(:id, :email, :description, :name, :price)
    end





end
