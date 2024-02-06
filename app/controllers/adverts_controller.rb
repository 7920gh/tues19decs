class AdvertsController < ApplicationController

def index
@adverts=Advert.all
#@adverts=Advert.find(:all)

end

def new
#@advert=Advert.new
end


def show
@advert=Advert.find(params[:id])
#@aadvert=Advert.find(params[:id])


end

def new_advert
@advert=Advert.new
end


def create
@advert=Advert.new(advert_params)
@advert.save
#if @advert.save
#flash.now[:alert]="hello Mark"
#else
redirect_to adverts_path
#flash.now[:alert]="it didn't save"
#end
end


def edit
@advert=Advert.find(params[:id])

end

def delete
@advert=Advert.find(params[:id])
@advert.destroy
redirect_to adverts_path
end


def update
  @advert=Advert.find(params[:id])
  @advert.update(advert_params)
 # @advert.save
 # @advert.update_attributes(params[:advert])
  redirect_to adverts_path

end


private
 def advert_params
   params.require(:advert).permit(:name, :product, :description, :price, :email, :image_url)
end

end
