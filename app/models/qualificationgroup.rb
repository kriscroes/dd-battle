class Qualificationgroup < ActiveRecord::Base
  belongs_to :startup
  belongs_to :qualificationposition
end
