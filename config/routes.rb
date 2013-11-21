ReadingPlan::Application.routes.draw do
  devise_for :users

  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
    post "sign_out", :to => "devise/sessions#destroy"
  end

  resources :bookmarks, only: [:update]

  resources :users, only: [] do
    resources :lists, only: [:index, :edit, :update]
  end

  root to: "home#index"
end
