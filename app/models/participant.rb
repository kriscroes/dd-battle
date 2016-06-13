class Participant < ActiveRecord::Base
  has_many :startupparticipants
  has_many :startups, through: :startupparticipants
end
