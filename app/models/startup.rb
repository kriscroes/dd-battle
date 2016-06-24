class Startup < ActiveRecord::Base
  belongs_to :track
  has_many :startupparticipants
  has_many :participants, through: :startupparticipants

  #paper clip attachment
  has_attached_file :logo, :default_url => ActionController::Base.helpers.asset_path('noimage.png')
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
end
