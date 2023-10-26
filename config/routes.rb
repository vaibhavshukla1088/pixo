Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root :to => "pixoatics#home"
  get "service", to: "pixoatics#service", as: :"services"
  get "on-demand-developers", to: "pixoatics#onDemand", as: :"onDemandDeveloper"
  post "/on-demand-form", to: "pixoatics#demandForm", as: :"on_demand_form"
  post "on-contact-us-form", to: "pixoatics#contactUsForm", as: :"on_contact_us_form"
  get "react-native-development", to: "pixoatics#reactdevelopment", as: :"reactdevelopment"
  get "react-js-development", to: "pixoatics#jsdevelopment", as: :"jsdevelopment"
  get "ui-ux-development", to: "pixoatics#UI", as: :"ui-ux-development"
  get "qa-services", to: "pixoatics#QA", as: :"qa-development"
  get "rordeveloper", to: "pixoatics#rordeveloper"
  get "aboutUs", to: "pixoatics#aboutUs", as: :"aboutUs"
  get "career", to: "pixoatics#career", as: :"career"
  get "contactUs", to: "pixoatics#contactUs", as: :"contactUs"
  post "/apply_form", to: "pixoatics#apply_form"
end
