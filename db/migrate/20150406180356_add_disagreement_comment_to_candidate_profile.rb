class AddDisagreementCommentToCandidateProfile < ActiveRecord::Migration
  def change
    add_column :candidate_profiles, :disagreement_comment, :string
  end
end
