Rails.application.routes.draw do

  constraints :subdomain => "cp" do
    scope :module => "cp", :as => "cp" do

    end
  end

  scope :module => "fe", :as => "fe" do
    root "static_pages#main"
  end

end
