# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tickets, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Tickets routes
  # get '/tickets' => 'tickets#index'
  # get '/tickets/:id' => 'tickets#show'
  # delete '/tickets/:id' => 'tickets#destroy'
  # patch '/tickets/:id' => 'tickets#update'
  # post '/tickets' => 'tickets#create'

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
