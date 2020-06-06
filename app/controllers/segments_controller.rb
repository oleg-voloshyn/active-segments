class SegmentsController < InheritedResources::Base

  def index
    @segments = Segment.all
    @users = User.all
  end

  private

  def segment_params
    params.require(:segment).permit(:name, :link)
  end
end
