class CreateCandidateProfile < ActiveRecord::Migration
  def change
    create_table :candidate_profiles do |t|
      t.string    :name
      t.string    :email
      t.string    :phone
      t.string    :city
      t.date      :birthday
      t.string    :activity
      t.string    :studies
      t.text      :motivation
      t.text      :voluntariat
      t.text      :project_idea
      t.text      :teamwork
      t.text      :last_skill
      t.text      :agreement
    end
  end
end
