class CandidateProfile < ActiveRecord::Base
  validates :name, :email, :phone, :city, :age,
            :activity, :studies, :motivation,
            :presence => true
end
