Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # namespace 'api' do
  #   namespace 'v1' do
  #     resources :continentes, only: [:index]
  #   end
  # end
  resources :continentes, only: [:index, :show] do
    resources :paisplaces do
      resources :igeograficos
    end
  end
end
