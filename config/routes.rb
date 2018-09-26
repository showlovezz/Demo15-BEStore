Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 前台網路路徑設定
  root "bestores#index"
  resources :categories, only: [:show]
  resources :products, only: [:index, :show]

	# 後台網路路徑設定
  namespace :admin do
    root "bestores#index"
    resources :categories, except: [:show]
    resources :products, except: [:show]
  end
end
