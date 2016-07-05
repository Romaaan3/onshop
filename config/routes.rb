Rails.application.routes.draw do

  namespace :fe do
    resources :comments
  end
  namespace :cp do
    resources :products
  end
  namespace :cp do
    resources :categories
  end
  namespace :cp do
    resources :brands
  end
  devise_for :users
  constraints :subdomain => "cp" do
    scope :module => "cp", :as => "cp" do

    end
  end

  scope :module => "fe", :as => "fe" do
    root "static_pages#main"
  end

end
