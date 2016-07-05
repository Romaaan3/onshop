class ApplicationController < ActionController::Base
  include LocalSubdomain
  protect_from_forgery with: :exception

end
