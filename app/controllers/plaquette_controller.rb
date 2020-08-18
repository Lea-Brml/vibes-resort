class PlaquetteController < ApplicationController

  def new

  end

  def create

    @plaquette = Plaquette.create(firstname: params[:firstname],name: params[:name],email: params[:email],phone: params[:phone])

   if @plaquette.save
      render "show"
    else
      render "new"
      flash[:danger] = "Une erreur s'est produite. Veuillez remplir les champs requis et réessayer."
    end


  end

  def show

  end


end
