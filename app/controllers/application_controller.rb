class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_user!
    unless user_signed_in?
      redirect_to :home
    end
  end

end
