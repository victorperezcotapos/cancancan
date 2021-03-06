Rails.application.routes.draw do

  get 'pages/dashboard'
  get 'user/change_role/:id', to: "user#change_role", as: "user_change_role"
	resources :posts do
		resources :comments, only: [:create, :destroy]
	end

  resources :user

	devise_for :users, controllers: {
		sessions: 'users/sessions',
		registrations: 'users/registrations'
	}

	root 'posts#index'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
