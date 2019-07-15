class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @connection_tests = ConnectionTest.limit(50)
  end
end