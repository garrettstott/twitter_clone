class DashboardController < ApplicationController
  def index
    @tweet = Tweet.pagination(page, params[:page], per_page 15)
  end
end
