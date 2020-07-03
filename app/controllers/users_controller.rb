class UsersController < InheritedResources::Base

  private

  def user_params
    params.require(:user).permit(:name, :full_name, :link, :gender, :bib)
  end
end
