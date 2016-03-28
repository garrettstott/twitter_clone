Rails.application.routes.draw do

  root 'landing#show' 

  # RESOURCES
  
  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }

  resources :tweets
  resources :profile, only: [:show, :edit, :update] do 
    resources :address
  end

  # GET
  get 'dashboard/index'

  # PUT


  # DELETE

  
  end
