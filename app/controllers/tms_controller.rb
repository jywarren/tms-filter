class TmsController < ApplicationController

  def nonstandard
    service = Service.find params[:id] 
    if service.standard
      redirect_to service.switch(params[:x],params[:y],params[:z])+"."+params[:format]
    else
      redirect_to service.url_deslash+"/#{params[:z]}/#{params[:x]}/#{params[:y]}.#{params[:format]}"
    end
  end

  def standard
    service = Service.find params[:id] 
    if !service.standard
      redirect_to service.switch(params[:x],params[:y],params[:z])+"."+params[:format]
    else
      redirect_to service.url_deslash+"/#{params[:z]}/#{params[:x]}/#{params[:y]}.#{params[:format]}"
    end
  end

end
