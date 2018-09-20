Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 前台網路路徑設定
  root "bestores#index"

	# 後台網路路徑設定
  namespace :admin do
    root "bestores#index"
  end
end
