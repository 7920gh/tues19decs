class AddsController < ApplicationController


def show
 
 add = Add.find_by(email: params[:id][:name])
end



end
