class CandidateProfile < ActiveRecord::Base
  validates :name, :email, :phone, :city, :birthday,
            :activity, :studies, :motivation,
            :presence => true
end
