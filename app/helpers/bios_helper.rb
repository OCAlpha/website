module BiosHelper
  def unbioed_user
    @user = User.find(params[:id])
    redirect_to(user.bio) unless current_user.bio.nil?
  end
end
