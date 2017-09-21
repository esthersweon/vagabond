class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_available_cities

  def set_available_cities
      @available_cities =  City.all
  end
  
  include SessionsHelper
end
