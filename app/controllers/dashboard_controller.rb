class DashboardController < ApplicationController
  def index
    @race = Race.last
  end
end
