class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def not_found
    # :status => 404
    redirect_to root_path
   # raise ActionController::RoutingError.new('Not Found')
  end
end
