# frozen_string_literal: true

# See: https://guides.hanamirb.org/routing/overview

root to: 'home#index'
resources :books, only: %i[index new create]
