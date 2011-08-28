class Reaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :plan
  
  named_scope :positive, where(:attending => true)
  named_scope :negative, where(:attending => false)
end
