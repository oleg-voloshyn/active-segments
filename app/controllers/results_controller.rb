class ResultsController < InheritedResources::Base

  def index
    race = Race.last
    @segments = race.segments.order(:id)
    @users = if params[:gender] == "female"
               race.users.where(gender: "female").sort_by{ |user| user.results.pluck(:points).sum }
             else
               race.users.where(gender: "male").sort_by{ |user| user.results.pluck(:points).sum }
             end
  end

  private

  def result_params
    params.require(:result).permit(:moving_time, :points, :user, :segment_id)
  end
end
