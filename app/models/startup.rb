class Startup < ActiveRecord::Base
  belongs_to :track
  has_many :startupparticipants
  has_many :participants, through: :startupparticipants
end
