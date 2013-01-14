Recruit::Application.routes.draw do

  resources :recruiters

  resources :agents
  resources :jobs

  root :to => 'candidates#index'
  resources :candidates do
    member do
      get 'download_cv'
    end
    resources :notes
  end
end
