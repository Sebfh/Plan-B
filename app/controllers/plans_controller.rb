class PlansController < ApplicationController
  has_one :owner, :class_name => "User"
  has_many :reactions
  has_one :location
end
