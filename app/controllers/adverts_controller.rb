class AdvertsController < ApplicationController

#efore_filter :check_logged_in, :only => [:edit, :update]





def index
@adverts=Advert.all
#@adverts=Advert.find(:all)
@q = Advert.ransack(params[:q])
@adverts = @q.result(distinct: true).order(email: :desc)




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
redirect_to show_path(@advert[:id])
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
  redirect_to show_path(params[:id])

end

def search_form
@q = Advert.ransack(params[:q])
@advertss = @q.results(distinct:true)

end


private
 def advert_params
   params.require(:advert).permit(:name, :product, :description, :price, :email, :image_url)
end


private
 def check_logged_in
  authenticate_or_request_with_http_basic("Adverts") do |username, password|
   username == "admin" && password == "password" 
 end
end 


end
