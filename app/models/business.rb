class Business < ApplicationRecord
  validates_presence_of :yelp_id, :airport_id, :payload
end
