Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# call localhost:3000 display index.html
root 'posts#index', as: 'home'

# call localhost:3000/about display about.html
get 'about' => 'pages#about', as: 'about'

resources :posts do
	resources :comments
end

end
