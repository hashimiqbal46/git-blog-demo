Rails.application.routes.draw do

	resources :posts

#	resources :users do
#		get 'preview', on: :new
#	end

	resources :users	
	root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
