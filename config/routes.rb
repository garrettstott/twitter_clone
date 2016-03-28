Rails.application.routes.draw do

  get 'tweets/show'

  get 'tweets/new'

  get 'tweets/edit'

  root 'landing#show' 

  # RESOURCES
  
  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }

  resources :tweets, except: :index
  resources :profile, only: [:show, :edit, :update] do 
    resources :address
  end

  # GET
  get 'dashboard/index'

  # PUT


  # DELETE

  
  end
