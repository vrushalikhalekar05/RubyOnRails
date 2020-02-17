Rails.application.routes.draw do
  get 'about3/page3'
  get 'about/page'
  get 'book/list'
  get 'home/index', to: 'home#index'
  get 'home/page1', to: 'home#page1'
  get 'page1', to: 'home#page1'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'welcome/home', to:'welcome#home'
  root 'home#index'
  #root to: redirect('home/index')#this line is also important
end
