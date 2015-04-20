class AddAgeToCandidateProfile < ActiveRecord::Migration
  def change
    add_column :candidate_profiles, :age, :integer
  end
end
