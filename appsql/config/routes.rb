Rails.application.routes.draw do
  get 'home1/index1'
  get 'home/index', to:'home#index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#  namespace 'api' do
#    namespace 'v1' do
#      resources :bbbs
#    end

#  end
end
