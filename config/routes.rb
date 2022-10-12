Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_scope :user do
    # authenticated :user do
      # root 
    # end

    unauthenticated :user do 
      root "devise/sessions#new"
    end
  end
end
