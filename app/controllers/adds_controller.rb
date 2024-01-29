class AddsController < ApplicationController


def show
 
 @add = Add.find_by(id: params[:id][:name])
end
def index

@add = Add.find_by(id: params[:id][:name])
end


end
