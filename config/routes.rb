Rails.application.routes.draw do

  get 'sponsored_posts/show'

  get 'sponsored_posts/new'

  get 'sponsored_posts/edit'

  resources :questions

  resources :advertisements

  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: [:new, :create]
  post 'users/confirm' => 'users#confirm'

  resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'

  get 'welcome/contact'

  get 'welcome/faq'

  root 'welcome#index'

end
