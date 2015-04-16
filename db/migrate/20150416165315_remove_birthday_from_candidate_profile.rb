class RemoveBirthdayFromCandidateProfile < ActiveRecord::Migration
  def change
    remove_column :candidate_profiles, :birthday, :date
  end
end
