class HomeController < ApplicationController
  def land
    if user_signed_in?
      @new_chart = current_user.charts.new
      redirect_to charts_path
    else
      @landing_page = true
    end
  end
end