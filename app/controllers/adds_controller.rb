class AddsController < ApplicationController
#before_action :set_product, only: %i[ show ]

def show

#@adds = Add.find(id:)<% @adds.each do |add| %><p><%= add.name %></p><% end %>

# @adds = Add.find_by(id: params[:id])
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



end

