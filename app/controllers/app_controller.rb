class AppController < ApplicationController
  acts_as_token_authentication_handler_for User, fallback: :exception
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def command_line
    if params[:command]
      puts 'command here'
      init_rails_project if params[:command].include?("rails new")
      render json: {
        output: "your rails app has been created"
      }
    else
    render json: {
      output: "output string from the rails container"
    }
    end
  end

  private

  def init_rails_project
  end
end
