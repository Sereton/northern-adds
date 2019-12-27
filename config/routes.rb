Rails.application.routes.draw do
  devise_for :accounts
  resources :posts, except: [:index]
  resources :categories, except: [:show]

  get "c/:url" => "categories#show", as: :show_category
  post "message/send" => "public#send_enquiry_to_user", as: :send_enquiry
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  

  get "/terms" => "public#terms",as:"terms"
  get "/faqs" => "public#faqs",as:"faqs"
  get "/safety" => "public#safety",as:"safety"
  get "/scams" => "public#scams",as:"scams"
  get "/dashboard" => "accounts#index",as:"dashboard"

 
  root to: "public#home"

end
