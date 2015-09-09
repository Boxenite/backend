class PagesController < ApplicationController
  def home
    @suppress_header = true
    @homepage = true
  end
end
