Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  require "resque_web"

  root to: 'index#index'
  mount ResqueWeb::Engine => "/resque"
end
