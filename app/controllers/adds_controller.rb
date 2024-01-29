class AddsController < ApplicationController


def show
 
 @add = Add.find_by(id: params[:id])
end
def index

@add = Add.find_by(id: params[:id])
end


end
