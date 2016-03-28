Rails.application.routes.draw do
 
  root 'landing#show' 

  # RESOURCES
  
  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }

  # GET


  # PUT


  # DELETE

  
  end
