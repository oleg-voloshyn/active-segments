class SegmentsController < InheritedResources::Base

  def index
    race = Race.last
    @segments = race.segments
    @users = race.users
  end

  private

  def segment_params
    params.require(:segment).permit(:name, :link)
  end
end
