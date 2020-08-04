class SegmentsController < InheritedResources::Base

  def index
    race = Race.last
    @segments = race.segments
  end

  def show
    race = Race.last

    @users = if params[:gender] == "female"
               race.users.where(gender: "female").sort_by{ |user| user.results.pluck(:points).sum }.reverse
             else
               race.users.where(gender: "male").sort_by{ |user| user.results.pluck(:points).sum }.reverse
             end
    @segment = Segment.find(params[:id])
    @lider = @users.first.results.where(segment_id: @segment.id).pluck(:points).sum
  end

  private

  def segment_params
    params.require(:segment).permit(:name, :link, :rout)
  end
end
