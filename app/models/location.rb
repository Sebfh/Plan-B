class Location < ActiveRecord::Base
  extend Geocoder::Model::ActiveRecord # zoals uitgelegd op: https://github.com/alexreisner/geocoder/issues/105
  validates_presence_of :address
  belongs_to :plan
  
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end

