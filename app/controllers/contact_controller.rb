class ContactController < ApplicationController


  def new

  end

  def create

    @contact = Contact.create(name: params[:name] , firstname: params[:firstname] ,email: params[:email], message: params[:message])

   if @contact.save
      redirect_to root_path
      flash[:success] = "Votre message a bien été envoyé !"
    else
      redirect_to root_path
      flash[:danger] = "Une erreur s'est produits. Votre message ne s'est pas envoyé, veuillez réessayer."
    end

  end

  def show

  end

  def index

    @contact = Contact.all
    @plaquette = Plaquette.all

  end


end
