class PagesController < ApplicationController
  def home
    @suppress_header = true
    @homepage = true
    @user = User.new()
  end
end
