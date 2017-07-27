Rails.application.routes.draw do
  resources :tags
  resources :movies do
  	member do
  		get 'delete_tag/:tag_id', to: "movies#delete_tag", as: "delete_tag"
  		end
  	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
