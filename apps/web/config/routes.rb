# frozen_string_literal: true

# See: https://guides.hanamirb.org/routing/overview

root to: 'home#index'
get '/books', to: 'books#index'
get '/books/new', to: 'books#new'
post '/books', to: 'books#create'
