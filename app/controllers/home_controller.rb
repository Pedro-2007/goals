class HomeController < ApplicationController
  def show
    if user_signed_in?
      redirect_to dashboard_path
    end
  end
end
