class AddsController < ApplicationController
#before_action :set_product, only: %i[ show ]
#before_action :set_product, only: %i[ show edit update destroy ]

def show

#@adds = Add.find(id:)<% @adds.each do |add| %><p><%= add.name %></p><% end %>

# products = Add.find_by(id: params[:id])
@products = Product.all
end



def index
#@add = Add.all
#@add = Add.find_by(id: params[:id])
#@products = Product.all
#@products=Product.order(:title)
@adds=Add.order(:name)
@products = Product.all


end
def new
 @add = Add.new

end










 



 





end

