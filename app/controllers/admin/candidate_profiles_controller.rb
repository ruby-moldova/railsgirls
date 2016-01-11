class Admin::CandidateProfilesController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

  def index
    @candidate_profiles = CandidateProfile.order(created_at: :desc)
  end

  def show
    @candidate_profile = CandidateProfile.find(params[:id])
  end
end
