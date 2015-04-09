class CandidateProfileController < ApplicationController
  def create
    p params
    @profile = CandidateProfile.new(candidate_params)
    if @profile.save
      render :post_submit
    else
      flash[:notice] = "Nu toate campurile obligatorii sunt completate"
      redirect_to new_candidate_profile_path
    end
  end

  def new
    @candidate = CandidateProfile.new
  end

  private

  def candidate_params
    params.require(:candidate_profile).permit!
  end
end
