class AddsController < ApplicationController
#before_action :set_product, only: %i[ show ]
#before_action :set_product, only: %i[ show edit update destroy ]

def show

#@adds = Add.find(id:)<% @adds.each do |add| %><p><%= add.name %></p><% end %>
#@add=Add.find(params[:id])
# products = Add.find_by(id: params[:id])
@products = Product.all
end



def index
#@add = Add.all
#@add = Add.find_by(id: params[:id])
#@products = Product.all
#@products=Product.order(:title)
#@adds=Add.order(:name)
@products = Product.all
@adds=Add.find(:all)

end
def new
 #@add = Add.new

end

def create

#@add=Add.new(params{:id})

#@add.save

#redirect_to "/adds/#{@add.id}"
end








 



 





end

