class AdsController < ApplicationController



def show
 p "hello mark"
 @ad = Ad.find(params[:id])
end








end
