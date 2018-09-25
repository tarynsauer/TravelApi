class Business < ApplicationRecord
  validates_presence_of :id, :airport_id, :payload
end
