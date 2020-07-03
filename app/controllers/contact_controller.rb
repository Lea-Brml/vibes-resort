class ContactController < ApplicationController


  def new

    @contact = Contact.new

  end

  def create

    @contact = Contact.create(name: params[:name] , firstname: params[:firstname] ,email: params[:email], message: params[:message],room: params[:room], suite: params[:suite])

   if @contact.save
      redirect_to root_path
      flash[:success] = "Votre demande de contact nous a bien été transmise. Nous vous recontacterons dans les meilleurs délais."
    else
      redirect_to root_path( :anchor => 'contact')
      flash[:danger] = "Une erreur s'est produite. Votre message ne s'est pas envoyé, veuillez réessayer et remplir tous les champs requis."
    end

  end

  def show

  end

  def index

    @contact = Contact.all
    @plaquette = Plaquette.all

  end


end
