class PlaquetteController < ApplicationController

  def new

  end

  def create

    @plaquette = Plaquette.create(phone: params[:phone],email: params[:email],first_name: params[:first_name],name: params[:name])

   if @plaquette.save
      render "show"
    else
      render "new"
      flash[:danger] = "Une erreur s'est produite. Veuillez saisir une adresse e-mail valide et réessayer."
    end


  end

  def show

  end


end
