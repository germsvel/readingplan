ReadingPlan::Application.routes.draw do
  devise_for :users

  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
  end

  resources :bookmarks, only: [:update]

  root to: "home#index"
end
