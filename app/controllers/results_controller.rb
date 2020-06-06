class ResultsController < InheritedResources::Base

  private

    def result_params
      params.require(:result).permit(:moving_time, :points, :user, :segment_id)
    end

end
