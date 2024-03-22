class SearchsController < ApplicationController
 

 def index
  @adverts=Advert.order(:name)
   
  
  end
  
 
  
  
  
end
