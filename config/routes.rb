# coding: utf-8

Weddedwives::Application.routes.draw do
  resources :suggestions do
    resources :gifts
  end

  match '/details' => 'pages#details', :as => :details
  match '/invite'  => 'pages#invite',  :as => :invite

  root :to => "pages#home"
end
