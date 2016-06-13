class Startupparticipant < ActiveRecord::Base
  belongs_to :startup
  belongs_to :participant
end
