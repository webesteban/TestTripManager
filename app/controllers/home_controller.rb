class HomeController < ApplicationController
  before_action :authenticate_user!
  def index

  	@travels = Travel.all
  end
end
