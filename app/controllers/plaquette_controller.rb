class PlaquetteController < ApplicationController

  def new

  end

  def create

    @plaquette = Plaquette.create(email: params[:email])

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
