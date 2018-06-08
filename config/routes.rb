Rails.application.routes.draw do
  root "topics#index"

  get 'about' => "pages#about"

  resources :topics do
  	member do
  		post 'upvote'
  		post 'downvote'
  	end
  end
end
	