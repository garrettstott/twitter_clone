Rails.application.routes.draw do
 
  get 'dashboard/index'

  get 'landing/show'

  root 'landing#show' 

  # RESOURCES
  
  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }

  # GET


  # PUT


  # DELETE

  
  end
