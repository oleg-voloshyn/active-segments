class RacesController < InheritedResources::Base

  private

    def race_params
      params.require(:race).permit(:name, :description, :start_date, :end_date)
    end

end
