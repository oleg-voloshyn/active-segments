class DashboardController < ApplicationController
  def index
    @race = Race.last
    @distance = @race.segments.pluck(:distance).sum.round(2)
  end
end
