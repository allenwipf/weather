Rails.application.routes.draw do

  root 'static_pages#index'
  post 'new_location' => 'locations#new'
 
end
