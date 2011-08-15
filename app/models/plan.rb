class Plan < ActiveRecord::Base
  belongs_to :user
  has_many :reactions
  has_one :location
end
