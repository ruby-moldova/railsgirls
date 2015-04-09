class CandidateProfile < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :city, presence: true
  validates :birthday, presence: true
  validates :activity, presence: true
  validates :studies, presence: true
  validates :motivation, presence: true
end
