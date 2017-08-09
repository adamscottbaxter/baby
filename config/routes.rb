Rails.application.routes.draw do
	root to: 'sentences#index'
	resources :sentences, only: [:index, :create]
end
