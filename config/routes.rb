Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
        sessions: 'users/sessions'
  }
  root 'home#index'
  get 'home/new2'
  get 'home/main'
  get 'home/fileupload'
  post 'home/filecreate'
  post 'home/filecheck'
  get 'home/filecurrent'
  get 'home/ownerpage'
  get 'home/changeState/:id'=>'home#changeState'
  get 'payment/new' => 'payment#new'
  get 'home/filedetail/:id' => 'home#filedetail'
  get 'home/index' => 'home#index'
  get 'payment/charge' => 'payment#charge'
  post 'payment/create'
  get 'payment/new'
  get 'payment/charge_show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end