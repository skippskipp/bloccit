Rails.application.routes.draw do

  resources :questions

  resources :advertisements

  resources :posts

  get 'about' => 'welcome#about'

  get 'welcome/contact'

  get 'welcome/faq'

  root 'welcome#index'

end
