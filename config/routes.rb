# coding: utf-8

Weddedwives::Application.routes.draw do
  resources :suggestions do
    resources :gifts
  end

  root :to => "suggestions#index"
end
