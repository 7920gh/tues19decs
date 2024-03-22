class SearchController < ApplicationController
  def index
  
  @q = Search.ransack(params[:q])
  @searchs=@q.results(distinct:true)
  
  end
end
