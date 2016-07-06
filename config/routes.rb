Rails.application.routes.draw do


  devise_for :users
  constraints :subdomain => "cp" do
    scope :module => "cp", :as => "cp" do
      resources :brands
      resources :categories
      resources :products
      resources :subcategories
      resources :subsubcategories
      resources :users do
        member do
          put 'change_admin_status'
          get 'change_admin_status'
        end
      end
      root "products#index"
    end
  end

  scope :module => "fe", :as => "fe" do
    resources :comments
    root "static_pages#main"
  end

end
