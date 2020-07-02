class PlaquetteController < ApplicationController

  def new

  end

  def create

    @plaquette = Plaquette.create(email: params[:email])

   if @plaquette.save
      render "show"
      flash[:success] = "Votre message a bien été envoyé !"
    else
      render "new"
      flash[:danger] = "Une erreur s'est produits. Votre message ne s'est pas envoyé, veuillez réessayer."
    end


  end

  def show

  end


end
