class ResultsController < InheritedResources::Base

  def index
    race = Race.last
    @segments = race.segments
    @users = race.users
  end

  private

  def result_params
    params.require(:result).permit(:moving_time, :points, :user, :segment_id)
  end
end
