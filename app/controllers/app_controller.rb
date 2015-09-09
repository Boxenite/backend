class AppController < ApplicationController
  acts_as_token_authentication_handler_for User
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token
end
