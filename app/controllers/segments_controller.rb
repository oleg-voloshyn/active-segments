class SegmentsController < InheritedResources::Base

  def index
    race = Race.last
    @segments = race.segments
  end

  private

  def segment_params
    params.require(:segment).permit(:name, :link)
  end
end
