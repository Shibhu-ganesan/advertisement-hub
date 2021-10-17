class HomeController < ApplicationController
  def index
  end
  def profile
    @adhubs = Adhub.all
  end
end
